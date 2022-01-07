
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int cdev; } ;


 int DASD_STOPPED_SU ;
 int dasd_device_set_stop_bits (struct dasd_device*,int ) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;

__attribute__((used)) static void __stop_device_on_lcu(struct dasd_device *device,
     struct dasd_device *pos)
{

 if (pos == device) {
  dasd_device_set_stop_bits(pos, DASD_STOPPED_SU);
  return;
 }
 spin_lock(get_ccwdev_lock(pos->cdev));
 dasd_device_set_stop_bits(pos, DASD_STOPPED_SU);
 spin_unlock(get_ccwdev_lock(pos->cdev));
}
