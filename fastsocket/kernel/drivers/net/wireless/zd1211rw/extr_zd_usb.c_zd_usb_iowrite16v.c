
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {int dummy; } ;
struct zd_ioreq16 {int dummy; } ;


 int zd_usb_iowrite16v_async (struct zd_usb*,struct zd_ioreq16 const*,unsigned int) ;
 int zd_usb_iowrite16v_async_end (struct zd_usb*,int) ;
 int zd_usb_iowrite16v_async_start (struct zd_usb*) ;

int zd_usb_iowrite16v(struct zd_usb *usb, const struct zd_ioreq16 *ioreqs,
   unsigned int count)
{
 int r;

 zd_usb_iowrite16v_async_start(usb);
 r = zd_usb_iowrite16v_async(usb, ioreqs, count);
 if (r) {
  zd_usb_iowrite16v_async_end(usb, 0);
  return r;
 }
 return zd_usb_iowrite16v_async_end(usb, 50 );
}
