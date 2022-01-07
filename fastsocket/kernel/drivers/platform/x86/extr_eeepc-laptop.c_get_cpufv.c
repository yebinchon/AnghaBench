
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_cpufv {int cur; int num; } ;


 int CM_ASL_CPUFV ;
 int ENODEV ;
 int get_acpi (int ) ;

__attribute__((used)) static int get_cpufv(struct eeepc_cpufv *c)
{
 c->cur = get_acpi(CM_ASL_CPUFV);
 c->num = (c->cur >> 8) & 0xff;
 c->cur &= 0xff;
 if (c->cur < 0 || c->num <= 0 || c->num > 12)
  return -ENODEV;
 return 0;
}
