
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dev; } ;
struct smscore_device_t {TYPE_1__ ir; } ;


 int rc_unregister_device (scalar_t__) ;
 int sms_log (char*) ;

void sms_ir_exit(struct smscore_device_t *coredev)
{
 if (coredev->ir.dev)
  rc_unregister_device(coredev->ir.dev);

 sms_log("");
}
