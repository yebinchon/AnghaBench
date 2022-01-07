
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds_trace {scalar_t__ ith; scalar_t__ end; scalar_t__ top; scalar_t__ begin; } ;
struct ds_context {unsigned char* ds; } ;
typedef enum ds_qualifier { ____Placeholder_ds_qualifier } ds_qualifier ;


 int ds_absolute_maximum ;
 int ds_buffer_base ;
 int ds_index ;
 int ds_interrupt_threshold ;
 int ds_set (unsigned char*,int,int ,unsigned long) ;

__attribute__((used)) static void ds_write_config(struct ds_context *context,
       struct ds_trace *cfg, enum ds_qualifier qual)
{
 unsigned char *ds = context->ds;

 ds_set(ds, qual, ds_buffer_base, (unsigned long)cfg->begin);
 ds_set(ds, qual, ds_index, (unsigned long)cfg->top);
 ds_set(ds, qual, ds_absolute_maximum, (unsigned long)cfg->end);
 ds_set(ds, qual, ds_interrupt_threshold, (unsigned long)cfg->ith);
}
