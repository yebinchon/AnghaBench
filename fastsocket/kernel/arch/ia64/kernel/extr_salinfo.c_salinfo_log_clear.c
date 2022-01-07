
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct salinfo_data {scalar_t__ state; int cpu_event; scalar_t__ log_buffer; scalar_t__ saved_num; } ;
struct TYPE_2__ {scalar_t__ severity; } ;
typedef TYPE_1__ sal_log_record_header_t ;


 scalar_t__ STATE_LOG_RECORD ;
 scalar_t__ STATE_NO_DATA ;
 int call_on_cpu (int,int ,struct salinfo_data*) ;
 int cpu_clear (int,int ) ;
 int cpu_isset (int,int ) ;
 int cpu_set (int,int ) ;
 int data_saved_lock ;
 scalar_t__ sal_log_severity_corrected ;
 int salinfo_log_clear_cpu ;
 int salinfo_log_new_read (int,struct salinfo_data*) ;
 int salinfo_work_to_do (struct salinfo_data*) ;
 int shift1_data_saved (struct salinfo_data*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
salinfo_log_clear(struct salinfo_data *data, int cpu)
{
 sal_log_record_header_t *rh;
 unsigned long flags;
 spin_lock_irqsave(&data_saved_lock, flags);
 data->state = STATE_NO_DATA;
 if (!cpu_isset(cpu, data->cpu_event)) {
  spin_unlock_irqrestore(&data_saved_lock, flags);
  return 0;
 }
 cpu_clear(cpu, data->cpu_event);
 if (data->saved_num) {
  shift1_data_saved(data, data->saved_num - 1);
  data->saved_num = 0;
 }
 spin_unlock_irqrestore(&data_saved_lock, flags);
 rh = (sal_log_record_header_t *)(data->log_buffer);

 if (rh->severity != sal_log_severity_corrected)
  call_on_cpu(cpu, salinfo_log_clear_cpu, data);

 salinfo_log_new_read(cpu, data);
 if (data->state == STATE_LOG_RECORD) {
  spin_lock_irqsave(&data_saved_lock, flags);
  cpu_set(cpu, data->cpu_event);
  salinfo_work_to_do(data);
  spin_unlock_irqrestore(&data_saved_lock, flags);
 }
 return 0;
}
