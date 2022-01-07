
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ipath_devdata {int ipath_sdma_descq_tail; int ipath_sdma_descq_phys; int ipath_sdma_descq_cnt; int ipath_sdma_head_phys; unsigned int ipath_piobcnt2k; unsigned int ipath_piobcnt4k; unsigned int ipath_lastport_piobuf; unsigned int ipath_pioreserved; int ipath_sendctrl; int ipath_sendctrl_lock; int ipath_sdma_status; TYPE_1__* ipath_kregs; int ipath_sdma_abort_task; int ipath_sdma_notify_task; int ipath_sdma_notifylist; int ipath_sdma_activelist; scalar_t__ ipath_sdma_descq_added; scalar_t__ ipath_sdma_descq_removed; scalar_t__ ipath_sdma_descq_head; scalar_t__ ipath_sdma_generation; scalar_t__ ipath_sdma_abort_jiffies; int ipath_sdma_descq; } ;
struct TYPE_2__ {int kr_scratch; int kr_sendctrl; int kr_senddmabufmask2; int kr_senddmabufmask1; int kr_senddmabufmask0; int kr_senddmaheadaddr; int kr_senddmatail; int kr_senddmalengen; int kr_senddmabase; } ;


 int BUG_ON (int) ;
 int INFINIPATH_S_SDMAINTENABLE ;
 int INIT_LIST_HEAD (int *) ;
 int IPATH_SDMA_ABORT_ABORTED ;
 int IPATH_SDMA_RUNNING ;
 int __set_bit (int ,int *) ;
 int alloc_sdma (struct ipath_devdata*) ;
 int ipath_chg_pioavailkernel (struct ipath_devdata*,unsigned int,unsigned int,int ) ;
 int ipath_dev_err (struct ipath_devdata*,char*) ;
 int ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int) ;
 int sdma_abort_task ;
 int sdma_notify_task ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_init (int *,int ,unsigned long) ;

int setup_sdma(struct ipath_devdata *dd)
{
 int ret = 0;
 unsigned i, n;
 u64 tmp64;
 u64 senddmabufmask[3] = { 0 };
 unsigned long flags;

 ret = alloc_sdma(dd);
 if (ret)
  goto done;

 if (!dd->ipath_sdma_descq) {
  ipath_dev_err(dd, "SendDMA memory not allocated\n");
  goto done;
 }






 dd->ipath_sdma_status = IPATH_SDMA_ABORT_ABORTED;
 dd->ipath_sdma_abort_jiffies = 0;
 dd->ipath_sdma_generation = 0;
 dd->ipath_sdma_descq_tail = 0;
 dd->ipath_sdma_descq_head = 0;
 dd->ipath_sdma_descq_removed = 0;
 dd->ipath_sdma_descq_added = 0;


 ipath_write_kreg(dd, dd->ipath_kregs->kr_senddmabase,
    dd->ipath_sdma_descq_phys);

 tmp64 = dd->ipath_sdma_descq_cnt;
 tmp64 |= 1<<18;
 ipath_write_kreg(dd, dd->ipath_kregs->kr_senddmalengen, tmp64);

 ipath_write_kreg(dd, dd->ipath_kregs->kr_senddmatail,
    dd->ipath_sdma_descq_tail);

 ipath_write_kreg(dd, dd->ipath_kregs->kr_senddmaheadaddr,
    dd->ipath_sdma_head_phys);





 n = dd->ipath_piobcnt2k + dd->ipath_piobcnt4k;
 i = dd->ipath_lastport_piobuf + dd->ipath_pioreserved;
 ipath_chg_pioavailkernel(dd, i, n - i , 0);
 for (; i < n; ++i) {
  unsigned word = i / 64;
  unsigned bit = i & 63;
  BUG_ON(word >= 3);
  senddmabufmask[word] |= 1ULL << bit;
 }
 ipath_write_kreg(dd, dd->ipath_kregs->kr_senddmabufmask0,
    senddmabufmask[0]);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_senddmabufmask1,
    senddmabufmask[1]);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_senddmabufmask2,
    senddmabufmask[2]);

 INIT_LIST_HEAD(&dd->ipath_sdma_activelist);
 INIT_LIST_HEAD(&dd->ipath_sdma_notifylist);

 tasklet_init(&dd->ipath_sdma_notify_task, sdma_notify_task,
       (unsigned long) dd);
 tasklet_init(&dd->ipath_sdma_abort_task, sdma_abort_task,
       (unsigned long) dd);







 spin_lock_irqsave(&dd->ipath_sendctrl_lock, flags);
 dd->ipath_sendctrl |= INFINIPATH_S_SDMAINTENABLE;
 ipath_write_kreg(dd, dd->ipath_kregs->kr_sendctrl, dd->ipath_sendctrl);
 ipath_read_kreg64(dd, dd->ipath_kregs->kr_scratch);
 __set_bit(IPATH_SDMA_RUNNING, &dd->ipath_sdma_status);
 spin_unlock_irqrestore(&dd->ipath_sendctrl_lock, flags);

done:
 return ret;
}
