
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct zcrypt_device* message; } ;
struct zcrypt_device {TYPE_1__ reply; } ;


 int kfree (struct zcrypt_device*) ;

void zcrypt_device_free(struct zcrypt_device *zdev)
{
 kfree(zdev->reply.message);
 kfree(zdev);
}
