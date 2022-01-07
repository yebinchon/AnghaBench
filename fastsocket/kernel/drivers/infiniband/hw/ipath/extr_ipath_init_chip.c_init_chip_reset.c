
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ipath_devdata {unsigned long long ipath_rcvctrl; unsigned long long ipath_r_tailupd_shift; int ipath_portcnt; unsigned int ipath_sendctrl; scalar_t__ ipath_rcvtidcnt; scalar_t__ ipath_rcvtidbase; scalar_t__ ipath_rcvegrcnt; scalar_t__ ipath_rcvegrbase; TYPE_2__* pcidev; TYPE_1__* ipath_kregs; int ipath_sendctrl_lock; scalar_t__ ipath_r_intravail_shift; scalar_t__ ipath_r_portenable_shift; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int kr_rcvegrbase; int kr_rcvegrcnt; int kr_rcvtidbase; int kr_rcvtidcnt; int kr_control; int kr_scratch; int kr_sendctrl; int kr_rcvctrl; } ;


 int clear_bit (scalar_t__,unsigned long long*) ;
 int dev_info (int *,char*,scalar_t__,scalar_t__) ;
 scalar_t__ ipath_read_kreg32 (struct ipath_devdata*,int ) ;
 int ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,unsigned long long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int init_chip_reset(struct ipath_devdata *dd)
{
 u32 rtmp;
 int i;
 unsigned long flags;





 dd->ipath_rcvctrl &= ~(1ULL << dd->ipath_r_tailupd_shift);
 for (i = 0; i < dd->ipath_portcnt; i++) {
  clear_bit(dd->ipath_r_portenable_shift + i,
     &dd->ipath_rcvctrl);
  clear_bit(dd->ipath_r_intravail_shift + i,
     &dd->ipath_rcvctrl);
 }
 ipath_write_kreg(dd, dd->ipath_kregs->kr_rcvctrl,
  dd->ipath_rcvctrl);

 spin_lock_irqsave(&dd->ipath_sendctrl_lock, flags);
 dd->ipath_sendctrl = 0U;
 ipath_write_kreg(dd, dd->ipath_kregs->kr_sendctrl, dd->ipath_sendctrl);
 ipath_read_kreg64(dd, dd->ipath_kregs->kr_scratch);
 spin_unlock_irqrestore(&dd->ipath_sendctrl_lock, flags);

 ipath_write_kreg(dd, dd->ipath_kregs->kr_control, 0ULL);

 rtmp = ipath_read_kreg32(dd, dd->ipath_kregs->kr_rcvtidcnt);
 if (rtmp != dd->ipath_rcvtidcnt)
  dev_info(&dd->pcidev->dev, "tidcnt was %u before "
    "reset, now %u, using original\n",
    dd->ipath_rcvtidcnt, rtmp);
 rtmp = ipath_read_kreg32(dd, dd->ipath_kregs->kr_rcvtidbase);
 if (rtmp != dd->ipath_rcvtidbase)
  dev_info(&dd->pcidev->dev, "tidbase was %u before "
    "reset, now %u, using original\n",
    dd->ipath_rcvtidbase, rtmp);
 rtmp = ipath_read_kreg32(dd, dd->ipath_kregs->kr_rcvegrcnt);
 if (rtmp != dd->ipath_rcvegrcnt)
  dev_info(&dd->pcidev->dev, "egrcnt was %u before "
    "reset, now %u, using original\n",
    dd->ipath_rcvegrcnt, rtmp);
 rtmp = ipath_read_kreg32(dd, dd->ipath_kregs->kr_rcvegrbase);
 if (rtmp != dd->ipath_rcvegrbase)
  dev_info(&dd->pcidev->dev, "egrbase was %u before "
    "reset, now %u, using original\n",
    dd->ipath_rcvegrbase, rtmp);

 return 0;
}
