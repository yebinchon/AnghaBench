
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_ioreq32 {int value; int addr; } ;
struct zd_ioreq16 {int value; int addr; } ;
struct zd_chip {int usb; int mutex; } ;
typedef int ioreqs16 ;


 int BUG_ON (int) ;
 int EINVAL ;
 int USB_MAX_IOWRITE32_COUNT ;
 int ZD_ASSERT (int ) ;
 int dev_dbg_f (int ,char*,int) ;
 int inc_addr (int ) ;
 int mutex_is_locked (int *) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_usb_iowrite16v_async (int *,struct zd_ioreq16*,unsigned int) ;

__attribute__((used)) static int _zd_iowrite32v_async_locked(struct zd_chip *chip,
           const struct zd_ioreq32 *ioreqs,
           unsigned int count)
{
 int i, j, r;
 struct zd_ioreq16 ioreqs16[USB_MAX_IOWRITE32_COUNT * 2];
 unsigned int count16;



 ZD_ASSERT(mutex_is_locked(&chip->mutex));

 if (count == 0)
  return 0;
 if (count > USB_MAX_IOWRITE32_COUNT)
  return -EINVAL;

 count16 = 2 * count;
 BUG_ON(count16 * sizeof(struct zd_ioreq16) > sizeof(ioreqs16));

 for (i = 0; i < count; i++) {
  j = 2*i;

  ioreqs16[j].value = ioreqs[i].value >> 16;
  ioreqs16[j].addr = inc_addr(ioreqs[i].addr);
  ioreqs16[j+1].value = ioreqs[i].value;
  ioreqs16[j+1].addr = ioreqs[i].addr;
 }

 r = zd_usb_iowrite16v_async(&chip->usb, ioreqs16, count16);






 return r;
}
