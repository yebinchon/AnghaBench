
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sht15_data {scalar_t__ flag; TYPE_1__* pdata; int wait_queue; int read_work; int interrupt_handled; } ;
struct TYPE_2__ {int gpio_data; } ;


 int ETIME ;
 scalar_t__ SHT15_READING_NOTHING ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int disable_irq_nosync (int ) ;
 int enable_irq (int ) ;
 int gpio_direction_input (int ) ;
 scalar_t__ gpio_get_value (int ) ;
 int gpio_to_irq (int ) ;
 int msecs_to_jiffies (int) ;
 int schedule_work (int *) ;
 int sht15_connection_reset (struct sht15_data*) ;
 int sht15_send_cmd (struct sht15_data*,int) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static inline int sht15_update_single_val(struct sht15_data *data,
       int command,
       int timeout_msecs)
{
 int ret;
 ret = sht15_send_cmd(data, command);
 if (ret)
  return ret;

 gpio_direction_input(data->pdata->gpio_data);
 atomic_set(&data->interrupt_handled, 0);

 enable_irq(gpio_to_irq(data->pdata->gpio_data));
 if (gpio_get_value(data->pdata->gpio_data) == 0) {
  disable_irq_nosync(gpio_to_irq(data->pdata->gpio_data));

  if (!atomic_read(&data->interrupt_handled))
   schedule_work(&data->read_work);
 }
 ret = wait_event_timeout(data->wait_queue,
     (data->flag == SHT15_READING_NOTHING),
     msecs_to_jiffies(timeout_msecs));
 if (ret == 0) {
  disable_irq_nosync(gpio_to_irq(data->pdata->gpio_data));
  sht15_connection_reset(data);
  return -ETIME;
 }
 return 0;
}
