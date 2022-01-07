
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_dvb_adapter {int dvb_adap; int dvb_fe; int dmxdev; int active_feed; int users; } ;
struct poseidon {struct pd_dvb_adapter dvb_data; } ;


 int HZ ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ atomic_read (int *) ;
 int dvb_dmxdev_release (int *) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_frontend (int *) ;
 int pd_dvb_usb_device_cleanup (struct poseidon*) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;

void pd_dvb_usb_device_exit(struct poseidon *pd)
{
 struct pd_dvb_adapter *pd_dvb = &pd->dvb_data;

 while (atomic_read(&pd_dvb->users) != 0
  || atomic_read(&pd_dvb->active_feed) != 0) {
  set_current_state(TASK_INTERRUPTIBLE);
  schedule_timeout(HZ);
 }
 dvb_dmxdev_release(&pd_dvb->dmxdev);
 dvb_unregister_frontend(&pd_dvb->dvb_fe);
 dvb_unregister_adapter(&pd_dvb->dvb_adap);
 pd_dvb_usb_device_cleanup(pd);
}
