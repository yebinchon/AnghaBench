
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctl; } ;


 int HD_CMD ;
 int HD_ERROR ;
 int barrier () ;
 scalar_t__ drive_busy () ;
 int hd_error ;
 TYPE_1__* hd_info ;
 int inb (int ) ;
 int outb_p (int,int ) ;
 int printk (char*,...) ;

__attribute__((used)) static void reset_controller(void)
{
 int i;

 outb_p(4, HD_CMD);
 for (i = 0; i < 1000; i++) barrier();
 outb_p(hd_info[0].ctl & 0x0f, HD_CMD);
 for (i = 0; i < 1000; i++) barrier();
 if (drive_busy())
  printk("hd: controller still busy\n");
 else if ((hd_error = inb(HD_ERROR)) != 1)
  printk("hd: controller reset failed: %02x\n", hd_error);
}
