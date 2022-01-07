
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds_trace {void* ith; void* end; void* top; void* begin; } ;
struct ds_context {unsigned char* ds; } ;
typedef enum ds_qualifier { ____Placeholder_ds_qualifier } ds_qualifier ;


 int ds_absolute_maximum ;
 int ds_buffer_base ;
 scalar_t__ ds_get (unsigned char*,int,int ) ;
 int ds_index ;
 int ds_interrupt_threshold ;

__attribute__((used)) static void ds_read_config(struct ds_context *context,
      struct ds_trace *cfg, enum ds_qualifier qual)
{
 unsigned char *ds = context->ds;

 cfg->begin = (void *)ds_get(ds, qual, ds_buffer_base);
 cfg->top = (void *)ds_get(ds, qual, ds_index);
 cfg->end = (void *)ds_get(ds, qual, ds_absolute_maximum);
 cfg->ith = (void *)ds_get(ds, qual, ds_interrupt_threshold);
}
