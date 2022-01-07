
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_devdata {int ipath_sendctrl_lock; TYPE_1__* ipath_kregs; int ipath_sendctrl; int verbs_dev; } ;
struct TYPE_2__ {int kr_scratch; int kr_sendctrl; } ;


 int INFINIPATH_S_PIOINTBUFAVAIL ;
 int ipath_ib_piobufavail (int ) ;
 int ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void handle_layer_pioavail(struct ipath_devdata *dd)
{
 unsigned long flags;
 int ret;

 ret = ipath_ib_piobufavail(dd->verbs_dev);
 if (ret > 0)
  goto set;

 return;
set:
 spin_lock_irqsave(&dd->ipath_sendctrl_lock, flags);
 dd->ipath_sendctrl |= INFINIPATH_S_PIOINTBUFAVAIL;
 ipath_write_kreg(dd, dd->ipath_kregs->kr_sendctrl,
    dd->ipath_sendctrl);
 ipath_read_kreg64(dd, dd->ipath_kregs->kr_scratch);
 spin_unlock_irqrestore(&dd->ipath_sendctrl_lock, flags);
}
