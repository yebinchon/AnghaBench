
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ghes_estatus_cache {int time_in; struct acpi_hest_generic* generic; int count; int estatus_len; } ;
struct acpi_hest_generic_status {int dummy; } ;
struct acpi_hest_generic {int dummy; } ;


 int GHES_ESTATUS_CACHE_ALLOCED_MAX ;
 int GHES_ESTATUS_CACHE_LEN (int ) ;
 struct acpi_hest_generic_status* GHES_ESTATUS_FROM_CACHE (struct ghes_estatus_cache*) ;
 int apei_estatus_len (struct acpi_hest_generic_status*) ;
 int atomic_add_return (int,int *) ;
 int atomic_dec (int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ gen_pool_alloc (int ,int ) ;
 int ghes_estatus_cache_alloced ;
 int ghes_estatus_pool ;
 int memcpy (struct acpi_hest_generic_status*,struct acpi_hest_generic_status*,int ) ;
 int sched_clock () ;

__attribute__((used)) static struct ghes_estatus_cache *ghes_estatus_cache_alloc(
 struct acpi_hest_generic *generic,
 struct acpi_hest_generic_status *estatus)
{
 int alloced;
 u32 len, cache_len;
 struct ghes_estatus_cache *cache;
 struct acpi_hest_generic_status *cache_estatus;

 alloced = atomic_add_return(1, &ghes_estatus_cache_alloced);
 if (alloced > GHES_ESTATUS_CACHE_ALLOCED_MAX) {
  atomic_dec(&ghes_estatus_cache_alloced);
  return ((void*)0);
 }
 len = apei_estatus_len(estatus);
 cache_len = GHES_ESTATUS_CACHE_LEN(len);
 cache = (void *)gen_pool_alloc(ghes_estatus_pool, cache_len);
 if (!cache) {
  atomic_dec(&ghes_estatus_cache_alloced);
  return ((void*)0);
 }
 cache_estatus = GHES_ESTATUS_FROM_CACHE(cache);
 memcpy(cache_estatus, estatus, len);
 cache->estatus_len = len;
 atomic_set(&cache->count, 0);
 cache->generic = generic;
 cache->time_in = sched_clock();
 return cache;
}
