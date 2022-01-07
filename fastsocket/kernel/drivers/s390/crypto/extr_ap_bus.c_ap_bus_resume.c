
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct ap_device {int lock; int qid; } ;
struct TYPE_4__ {scalar_t__ expires; scalar_t__ data; int function; } ;


 int AP_MKQID (int ,int) ;
 int AP_QID_DEVICE (int ) ;
 int AP_QID_QUEUE (int ) ;
 int ENOMEM ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int ap_config_time ;
 int ap_config_timeout ;
 TYPE_1__ ap_config_timer ;
 int ap_config_work ;
 int ap_domain_index ;
 int * ap_interrupt_indicator ;
 int ap_interrupts_available () ;
 int ap_poll_thread_start () ;
 int ap_query_configuration () ;
 int ap_schedule_poll_timer () ;
 int ap_select_domain () ;
 scalar_t__ ap_suspend_flag ;
 int ap_tasklet ;
 scalar_t__ ap_thread_flag ;
 int ap_using_interrupts () ;
 int ap_work_queue ;
 int create_singlethread_workqueue (char*) ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int queue_work (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tasklet_enable (int *) ;
 int tasklet_schedule (int *) ;
 struct ap_device* to_ap_dev (struct device*) ;
 int user_set_domain ;

__attribute__((used)) static int ap_bus_resume(struct device *dev)
{
 int rc = 0;
 struct ap_device *ap_dev = to_ap_dev(dev);

 if (ap_suspend_flag) {
  ap_suspend_flag = 0;
  if (!ap_interrupts_available())
   ap_interrupt_indicator = ((void*)0);
  ap_query_configuration();
  if (!user_set_domain) {
   ap_domain_index = -1;
   ap_select_domain();
  }
  init_timer(&ap_config_timer);
  ap_config_timer.function = ap_config_timeout;
  ap_config_timer.data = 0;
  ap_config_timer.expires = jiffies + ap_config_time * HZ;
  add_timer(&ap_config_timer);
  ap_work_queue = create_singlethread_workqueue("kapwork");
  if (!ap_work_queue)
   return -ENOMEM;
  tasklet_enable(&ap_tasklet);
  if (!ap_using_interrupts())
   ap_schedule_poll_timer();
  else
   tasklet_schedule(&ap_tasklet);
  if (ap_thread_flag)
   rc = ap_poll_thread_start();
 }
 if (AP_QID_QUEUE(ap_dev->qid) != ap_domain_index) {
  spin_lock_bh(&ap_dev->lock);
  ap_dev->qid = AP_MKQID(AP_QID_DEVICE(ap_dev->qid),
           ap_domain_index);
  spin_unlock_bh(&ap_dev->lock);
 }
 queue_work(ap_work_queue, &ap_config_work);

 return rc;
}
