
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {scalar_t__ initialized; } ;


 int dev_dbg_f (int ,char*) ;
 int zd_op_stop (int ) ;
 int zd_usb_dev (struct zd_usb*) ;
 int zd_usb_disable_int (struct zd_usb*) ;
 int zd_usb_disable_rx (struct zd_usb*) ;
 int zd_usb_disable_tx (struct zd_usb*) ;
 int zd_usb_to_hw (struct zd_usb*) ;

__attribute__((used)) static void zd_usb_stop(struct zd_usb *usb)
{
 dev_dbg_f(zd_usb_dev(usb), "\n");

 zd_op_stop(zd_usb_to_hw(usb));

 zd_usb_disable_tx(usb);
 zd_usb_disable_rx(usb);
 zd_usb_disable_int(usb);

 usb->initialized = 0;
}
