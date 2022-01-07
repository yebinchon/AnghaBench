
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct salinfo_data_saved {int * buffer; int size; int id; int cpu; } ;
struct salinfo_data {int cpu_event; struct salinfo_data_saved* data_saved; int saved_num; } ;
struct TYPE_2__ {int id; } ;
typedef TYPE_1__ sal_log_record_header_t ;


 int ARRAY_SIZE (struct salinfo_data_saved*) ;
 int BUG_ON (int) ;
 int cpu_set (int ,int ) ;
 int data_saved_lock ;
 struct salinfo_data* salinfo_data ;
 struct salinfo_data_saved* salinfo_log_name ;
 int salinfo_work_to_do (struct salinfo_data*) ;
 int shift1_data_saved (struct salinfo_data*,int ) ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
salinfo_log_wakeup(int type, u8 *buffer, u64 size, int irqsafe)
{
 struct salinfo_data *data = salinfo_data + type;
 struct salinfo_data_saved *data_saved;
 unsigned long flags = 0;
 int i;
 int saved_size = ARRAY_SIZE(data->data_saved);

 BUG_ON(type >= ARRAY_SIZE(salinfo_log_name));

 if (irqsafe)
  spin_lock_irqsave(&data_saved_lock, flags);
 if (buffer) {
  for (i = 0, data_saved = data->data_saved; i < saved_size; ++i, ++data_saved) {
   if (!data_saved->buffer)
    break;
  }
  if (i == saved_size) {
   if (!data->saved_num) {
    shift1_data_saved(data, 0);
    data_saved = data->data_saved + saved_size - 1;
   } else
    data_saved = ((void*)0);
  }
  if (data_saved) {
   data_saved->cpu = smp_processor_id();
   data_saved->id = ((sal_log_record_header_t *)buffer)->id;
   data_saved->size = size;
   data_saved->buffer = buffer;
  }
 }
 cpu_set(smp_processor_id(), data->cpu_event);
 if (irqsafe) {
  salinfo_work_to_do(data);
  spin_unlock_irqrestore(&data_saved_lock, flags);
 }
}
