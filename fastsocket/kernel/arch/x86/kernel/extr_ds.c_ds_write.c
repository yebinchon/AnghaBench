
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ds_context {int ds; } ;
typedef enum ds_qualifier { ____Placeholder_ds_qualifier } ds_qualifier ;
struct TYPE_2__ {unsigned long* sizeof_rec; } ;


 int EINVAL ;
 int ds_absolute_maximum ;
 int ds_buffer_base ;
 TYPE_1__ ds_cfg ;
 unsigned long ds_get (int ,int,int ) ;
 int ds_index ;
 int ds_interrupt_threshold ;
 int ds_overflow (struct ds_context*,int) ;
 int ds_set (int ,int,int ,unsigned long) ;
 int memcpy (void*,void const*,unsigned long) ;
 int memset (char*,int ,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;

__attribute__((used)) static int ds_write(struct ds_context *context, enum ds_qualifier qual,
      const void *record, size_t size)
{
 int bytes_written = 0;

 if (!record)
  return -EINVAL;

 while (size) {
  unsigned long base, index, end, write_end, int_th;
  unsigned long write_size, adj_write_size;
  base = ds_get(context->ds, qual, ds_buffer_base);
  index = ds_get(context->ds, qual, ds_index);
  end = ds_get(context->ds, qual, ds_absolute_maximum);
  int_th = ds_get(context->ds, qual, ds_interrupt_threshold);

  write_end = min(end, int_th);





  if (write_end <= index)
   write_end = end;

  if (write_end <= index)
   break;

  write_size = min((unsigned long) size, write_end - index);
  memcpy((void *)index, record, write_size);

  record = (const char *)record + write_size;
  size -= write_size;
  bytes_written += write_size;

  adj_write_size = write_size / ds_cfg.sizeof_rec[qual];
  adj_write_size *= ds_cfg.sizeof_rec[qual];


  memset((char *)index + write_size, 0,
         adj_write_size - write_size);
  index += adj_write_size;

  if (index >= end)
   index = base;
  ds_set(context->ds, qual, ds_index, index);

  if (index >= int_th)
   ds_overflow(context, qual);
 }

 return bytes_written;
}
