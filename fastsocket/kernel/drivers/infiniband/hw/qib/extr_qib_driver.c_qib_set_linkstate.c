
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qib_pportdata {int lflags; int lflags_lock; struct qib_devdata* dd; } ;
struct qib_devdata {int (* f_set_ib_cfg ) (struct qib_pportdata*,int ,int) ;} ;


 int EINVAL ;
 int IB_LINKCMD_ACTIVE ;
 int IB_LINKCMD_ARMED ;
 int IB_LINKCMD_DOWN ;
 int IB_LINKINITCMD_DISABLE ;
 int IB_LINKINITCMD_NOP ;
 int IB_LINKINITCMD_POLL ;
 int IB_LINKINITCMD_SLEEP ;
 int QIBL_LINKACTIVE ;
 int QIBL_LINKARMED ;
 int QIBL_LINKINIT ;
 int QIBL_LINKV ;
 int QIB_IB_CFG_LSTATE ;






 int qib_wait_linkstate (struct qib_pportdata*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct qib_pportdata*,int ,int) ;
 int stub2 (struct qib_pportdata*,int ,int) ;
 int stub3 (struct qib_pportdata*,int ,int) ;
 int stub4 (struct qib_pportdata*,int ,int) ;
 int stub5 (struct qib_pportdata*,int ,int) ;
 int stub6 (struct qib_pportdata*,int ,int) ;

int qib_set_linkstate(struct qib_pportdata *ppd, u8 newstate)
{
 u32 lstate;
 int ret;
 struct qib_devdata *dd = ppd->dd;
 unsigned long flags;

 switch (newstate) {
 case 129:
  dd->f_set_ib_cfg(ppd, QIB_IB_CFG_LSTATE,
     IB_LINKCMD_DOWN | IB_LINKINITCMD_NOP);

  ret = 0;
  goto bail;

 case 131:
  dd->f_set_ib_cfg(ppd, QIB_IB_CFG_LSTATE,
     IB_LINKCMD_DOWN | IB_LINKINITCMD_POLL);

  ret = 0;
  goto bail;

 case 128:
  dd->f_set_ib_cfg(ppd, QIB_IB_CFG_LSTATE,
     IB_LINKCMD_DOWN | IB_LINKINITCMD_SLEEP);

  ret = 0;
  goto bail;

 case 130:
  dd->f_set_ib_cfg(ppd, QIB_IB_CFG_LSTATE,
     IB_LINKCMD_DOWN | IB_LINKINITCMD_DISABLE);

  ret = 0;
  goto bail;

 case 132:
  if (ppd->lflags & QIBL_LINKARMED) {
   ret = 0;
   goto bail;
  }
  if (!(ppd->lflags & (QIBL_LINKINIT | QIBL_LINKACTIVE))) {
   ret = -EINVAL;
   goto bail;
  }






  spin_lock_irqsave(&ppd->lflags_lock, flags);
  ppd->lflags &= ~QIBL_LINKV;
  spin_unlock_irqrestore(&ppd->lflags_lock, flags);
  dd->f_set_ib_cfg(ppd, QIB_IB_CFG_LSTATE,
     IB_LINKCMD_ARMED | IB_LINKINITCMD_NOP);
  lstate = QIBL_LINKV;
  break;

 case 133:
  if (ppd->lflags & QIBL_LINKACTIVE) {
   ret = 0;
   goto bail;
  }
  if (!(ppd->lflags & QIBL_LINKARMED)) {
   ret = -EINVAL;
   goto bail;
  }
  dd->f_set_ib_cfg(ppd, QIB_IB_CFG_LSTATE,
     IB_LINKCMD_ACTIVE | IB_LINKINITCMD_NOP);
  lstate = QIBL_LINKACTIVE;
  break;

 default:
  ret = -EINVAL;
  goto bail;
 }
 ret = qib_wait_linkstate(ppd, lstate, 10);

bail:
 return ret;
}
