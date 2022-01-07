
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcrypt_ops {int owner; } ;


 struct zcrypt_ops* __ops_lookup (unsigned char*,int) ;
 int request_module (unsigned char*) ;
 int try_module_get (int ) ;

struct zcrypt_ops *zcrypt_msgtype_request(unsigned char *name, int variant)
{
 struct zcrypt_ops *zops = ((void*)0);

 zops = __ops_lookup(name, variant);

 if (!zops) {
  request_module(name);
  zops = __ops_lookup(name, variant);
 }

 if ((!zops) || (!try_module_get(zops->owner)))
  return ((void*)0);
 return zops;
}
