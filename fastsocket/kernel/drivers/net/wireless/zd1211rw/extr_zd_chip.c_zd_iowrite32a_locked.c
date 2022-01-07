
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_ioreq32 {int addr; } ;
struct zd_chip {int usb; } ;


 unsigned int USB_MAX_IOWRITE32_COUNT ;
 int _zd_iowrite32v_async_locked (struct zd_chip*,struct zd_ioreq32 const*,unsigned int) ;
 int dev_dbg_f (int ,char*,int) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_usb_iowrite16v_async_end (int *,int) ;
 int zd_usb_iowrite16v_async_start (int *) ;

int zd_iowrite32a_locked(struct zd_chip *chip,
           const struct zd_ioreq32 *ioreqs, unsigned int count)
{
 int r;
 unsigned int i, j, t, max;

 zd_usb_iowrite16v_async_start(&chip->usb);

 for (i = 0; i < count; i += j + t) {
  t = 0;
  max = count-i;
  if (max > USB_MAX_IOWRITE32_COUNT)
   max = USB_MAX_IOWRITE32_COUNT;
  for (j = 0; j < max; j++) {
   if (!ioreqs[i+j].addr) {
    t = 1;
    break;
   }
  }

  r = _zd_iowrite32v_async_locked(chip, &ioreqs[i], j);
  if (r) {
   zd_usb_iowrite16v_async_end(&chip->usb, 0);
   dev_dbg_f(zd_chip_dev(chip),
    "error _zd_iowrite32v_locked."
    " Error number %d\n", r);
   return r;
  }
 }

 return zd_usb_iowrite16v_async_end(&chip->usb, 50 );
}
