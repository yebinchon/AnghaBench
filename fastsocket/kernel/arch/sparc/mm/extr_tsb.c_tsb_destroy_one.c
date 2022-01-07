
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsb_config {int tsb_reg_val; int * tsb; } ;


 int kmem_cache_free (int ,int *) ;
 int * tsb_caches ;

__attribute__((used)) static void tsb_destroy_one(struct tsb_config *tp)
{
 unsigned long cache_index;

 if (!tp->tsb)
  return;
 cache_index = tp->tsb_reg_val & 0x7UL;
 kmem_cache_free(tsb_caches[cache_index], tp->tsb);
 tp->tsb = ((void*)0);
 tp->tsb_reg_val = 0UL;
}
