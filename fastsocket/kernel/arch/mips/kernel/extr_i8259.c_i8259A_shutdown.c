
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;


 int PIC_MASTER_IMR ;
 int PIC_SLAVE_IMR ;
 scalar_t__ i8259A_auto_eoi ;
 int outb (int,int ) ;

__attribute__((used)) static int i8259A_shutdown(struct sys_device *dev)
{




 if (i8259A_auto_eoi >= 0) {
  outb(0xff, PIC_MASTER_IMR);
  outb(0xff, PIC_SLAVE_IMR);
 }
 return 0;
}
