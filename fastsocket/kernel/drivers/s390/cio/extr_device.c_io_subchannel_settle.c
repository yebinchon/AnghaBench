
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 scalar_t__ atomic_read (int *) ;
 int ccw_device_init_count ;
 int ccw_device_init_wq ;
 int cio_work_q ;
 int flush_workqueue (int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int io_subchannel_settle(void)
{
 int ret;

 ret = wait_event_interruptible(ccw_device_init_wq,
    atomic_read(&ccw_device_init_count) == 0);
 if (ret)
  return -EINTR;
 flush_workqueue(cio_work_q);
 return 0;
}
