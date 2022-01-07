
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threshold {int threshold_set; void* context; int fn; int threshold; } ;
typedef int dm_sm_threshold_fn ;
typedef int dm_block_t ;



__attribute__((used)) static void set_threshold(struct threshold *t, dm_block_t value,
     dm_sm_threshold_fn fn, void *context)
{
 t->threshold_set = 1;
 t->threshold = value;
 t->fn = fn;
 t->context = context;
}
