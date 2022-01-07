
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_dynmem_device {int dummy; } ;
struct TYPE_2__ {int config_event; } ;


 int HZ ;
 TYPE_1__ dm_device ;
 int kthread_should_stop () ;
 int post_status (struct hv_dynmem_device*) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int dm_thread_func(void *dm_dev)
{
 struct hv_dynmem_device *dm = dm_dev;
 int t;

 while (!kthread_should_stop()) {
  t = wait_for_completion_timeout(&dm_device.config_event, 1*HZ);





  if (t == 0)
   post_status(dm);

 }

 return 0;
}
