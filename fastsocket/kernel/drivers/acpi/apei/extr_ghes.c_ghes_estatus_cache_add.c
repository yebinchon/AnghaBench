
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ghes_estatus_cache {unsigned long long time_in; int rcu; int count; } ;
struct acpi_hest_generic_status {int dummy; } ;
struct acpi_hest_generic {int dummy; } ;


 int GHES_ESTATUS_CACHES_SIZE ;
 unsigned long long GHES_ESTATUS_IN_CACHE_MAX_NSEC ;
 int atomic_read (int *) ;
 int call_rcu (int *,int ) ;
 struct ghes_estatus_cache* cmpxchg (int *,struct ghes_estatus_cache*,struct ghes_estatus_cache*) ;
 int do_div (unsigned long long,int) ;
 struct ghes_estatus_cache* ghes_estatus_cache_alloc (struct acpi_hest_generic*,struct acpi_hest_generic_status*) ;
 int ghes_estatus_cache_free (struct ghes_estatus_cache*) ;
 int ghes_estatus_cache_rcu_free ;
 int * ghes_estatus_caches ;
 struct ghes_estatus_cache* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned long long sched_clock () ;
 int smp_wmb () ;

__attribute__((used)) static void ghes_estatus_cache_add(
 struct acpi_hest_generic *generic,
 struct acpi_hest_generic_status *estatus)
{
 int i, slot = -1, count;
 unsigned long long now, duration, period, max_period = 0;
 struct ghes_estatus_cache *cache, *slot_cache = ((void*)0), *new_cache;

 new_cache = ghes_estatus_cache_alloc(generic, estatus);
 if (new_cache == ((void*)0))
  return;
 rcu_read_lock();
 now = sched_clock();
 for (i = 0; i < GHES_ESTATUS_CACHES_SIZE; i++) {
  cache = rcu_dereference(ghes_estatus_caches[i]);
  if (cache == ((void*)0)) {
   slot = i;
   slot_cache = ((void*)0);
   break;
  }
  duration = now - cache->time_in;
  if (duration >= GHES_ESTATUS_IN_CACHE_MAX_NSEC) {
   slot = i;
   slot_cache = cache;
   break;
  }
  count = atomic_read(&cache->count);
  period = duration;
  do_div(period, (count + 1));
  if (period > max_period) {
   max_period = period;
   slot = i;
   slot_cache = cache;
  }
 }

 smp_wmb();
 if (slot != -1 && cmpxchg(ghes_estatus_caches + slot,
      slot_cache, new_cache) == slot_cache) {
  if (slot_cache)
   call_rcu(&slot_cache->rcu, ghes_estatus_cache_rcu_free);
 } else
  ghes_estatus_cache_free(new_cache);
 rcu_read_unlock();
}
