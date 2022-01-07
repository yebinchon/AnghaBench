
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int device; int devpath; } ;


 int g_smscore_deviceslock ;
 int kmutex_lock (int *) ;
 int kmutex_unlock (int *) ;
 int sms_info (char*,...) ;
 int smscore_init_ir (struct smscore_device_t*) ;
 int smscore_notify_callbacks (struct smscore_device_t*,int ,int) ;
 int smscore_registry_getmode (int ) ;
 int smscore_set_device_mode (struct smscore_device_t*,int ) ;

int smscore_start_device(struct smscore_device_t *coredev)
{
 int rc = smscore_set_device_mode(
   coredev, smscore_registry_getmode(coredev->devpath));
 if (rc < 0) {
  sms_info("set device mode faile , rc %d", rc);
  return rc;
 }

 kmutex_lock(&g_smscore_deviceslock);

 rc = smscore_notify_callbacks(coredev, coredev->device, 1);
 smscore_init_ir(coredev);

 sms_info("device %p started, rc %d", coredev, rc);

 kmutex_unlock(&g_smscore_deviceslock);

 return rc;
}
