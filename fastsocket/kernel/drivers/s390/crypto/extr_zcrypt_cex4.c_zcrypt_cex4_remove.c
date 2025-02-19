
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_ops {int dummy; } ;
struct zcrypt_device {struct zcrypt_ops* ops; } ;
struct ap_device {struct zcrypt_device* private; } ;


 int zcrypt_device_unregister (struct zcrypt_device*) ;
 int zcrypt_msgtype_release (struct zcrypt_ops*) ;

__attribute__((used)) static void zcrypt_cex4_remove(struct ap_device *ap_dev)
{
 struct zcrypt_device *zdev = ap_dev->private;
 struct zcrypt_ops *zops;

 if (zdev) {
  zops = zdev->ops;
  zcrypt_device_unregister(zdev);
  zcrypt_msgtype_release(zops);
 }
}
