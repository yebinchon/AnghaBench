
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;


 scalar_t__ i8259A_auto_eoi ;
 int init_8259A (scalar_t__) ;

__attribute__((used)) static int i8259A_resume(struct sys_device *dev)
{
 if (i8259A_auto_eoi >= 0)
  init_8259A(i8259A_auto_eoi);
 return 0;
}
