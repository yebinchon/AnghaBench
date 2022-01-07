
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int dummy; } ;


 int device_ctls_mutex ;
 int edac_device_workq_setup (struct edac_device_ctl_info*,unsigned long) ;
 int edac_device_workq_teardown (struct edac_device_ctl_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void edac_device_reset_delay_period(struct edac_device_ctl_info *edac_dev,
     unsigned long value)
{

 edac_device_workq_teardown(edac_dev);


 mutex_lock(&device_ctls_mutex);


 edac_device_workq_setup(edac_dev, value);

 mutex_unlock(&device_ctls_mutex);
}
