
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_ops {int owner; } ;


 int module_put (int ) ;

void zcrypt_msgtype_release(struct zcrypt_ops *zops)
{
 if (zops)
  module_put(zops->owner);
}
