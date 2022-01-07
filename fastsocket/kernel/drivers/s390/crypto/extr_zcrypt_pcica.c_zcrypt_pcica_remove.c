
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_device {int dummy; } ;
struct ap_device {struct zcrypt_device* private; } ;


 int zcrypt_device_unregister (struct zcrypt_device*) ;

__attribute__((used)) static void zcrypt_pcica_remove(struct ap_device *ap_dev)
{
 struct zcrypt_device *zdev = ap_dev->private;

 zcrypt_device_unregister(zdev);
}
