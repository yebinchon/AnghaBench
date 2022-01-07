
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int u32 ;
struct ipath_portdata {int port_rcvhdrq_size; } ;
struct TYPE_9__ {unsigned long data; void* expires; int function; } ;
struct ipath_devdata {unsigned long long ipath_rcvhdrcnt; int ipath_piobcnt2k; int ipath_piobcnt4k; int ipath_pioavregs; int ipath_cfgports; int ipath_pioreserved; int ipath_lastport_piobuf; int ipath_pbufsport; int ipath_ports_extrabuf; int ipath_lastpioindexl; int (* ipath_f_early_init ) (struct ipath_devdata*) ;int ipath_hdrqlast; int ipath_rcvhdrentsize; unsigned long long ipath_rcvhdrsize; unsigned long long ipath_pioavailregs_phys; unsigned long long ipath_hwerrmask; unsigned long long ipath_maskederrs; unsigned long ipath_dummy_hdrq_phys; int ipath_stats_timer_active; int ipath_flags; TYPE_4__ ipath_intrchk_timer; int * ipath_statusp; TYPE_1__* ipath_kregs; int (* ipath_f_intrsetup ) (struct ipath_devdata*) ;int ipath_hol_state; TYPE_4__ ipath_hol_timer; TYPE_4__ ipath_stats_timer; struct ipath_portdata** ipath_pd; TYPE_2__* pcidev; int ipath_dummy_hdrq; int (* ipath_f_tidtemplate ) (struct ipath_devdata*) ;void* ipath_errormask; int (* ipath_f_init_hwerrors ) (struct ipath_devdata*) ;scalar_t__ ipath_lastpioindex; int ipath_rcvegrcnt; int ipath_p0_rcvegrcnt; } ;
typedef int gfp_t ;
struct TYPE_8__ {scalar_t__ sps_nports; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int kr_intclear; int kr_intmask; int kr_errormask; int kr_errorclear; int kr_hwerrmask; int kr_hwerrclear; int kr_control; int kr_rcvbthqp; int kr_sendpioavailaddr; int kr_rcvhdrsize; int kr_rcvhdrentsize; int kr_rcvhdrcnt; } ;


 int ALIGN (int,int) ;
 int BITS_PER_BYTE ;
 int EINVAL ;
 int ENETDOWN ;
 int ENOMEM ;
 int EPERM ;
 int GFP_USER ;
 int HZ ;
 unsigned long long INFINIPATH_HWE_MEMBISTFAILED ;
 int IPATH_HAS_SEND_DMA ;
 int IPATH_HOL_UP ;
 unsigned long long IPATH_KD_QP ;
 int IPATH_MIN_USER_PORT_BUFCNT ;
 int IPATH_STATUS_CHIP_PRESENT ;
 int IPATH_STATUS_INITTED ;
 int VERBOSE ;
 int __GFP_COMP ;
 int add_timer (TYPE_4__*) ;
 scalar_t__ bringup_link (struct ipath_devdata*) ;
 int create_port0_egr (struct ipath_devdata*) ;
 struct ipath_portdata* create_portdata0 (struct ipath_devdata*) ;
 int dev_info (int *,char*,...) ;
 int dma_alloc_coherent (int *,int ,unsigned long*,int) ;
 int enable_chip (struct ipath_devdata*,int) ;
 int init_housekeeping (struct ipath_devdata*,int) ;
 int init_pioavailregs (struct ipath_devdata*) ;
 int init_shadow_tids (struct ipath_devdata*) ;
 int init_timer (TYPE_4__*) ;
 int ipath_cancel_sends (struct ipath_devdata*,int) ;
 int ipath_cdbg (int ,char*,int,int,int,int) ;
 int ipath_chg_pioavailkernel (struct ipath_devdata*,int ,int,int) ;
 int ipath_create_rcvhdrq (struct ipath_devdata*,struct ipath_portdata*) ;
 int ipath_dbg (char*,int,...) ;
 int ipath_dev_err (struct ipath_devdata*,char*,...) ;
 int ipath_free_pddata (struct ipath_devdata*,struct ipath_portdata*) ;
 int ipath_get_faststats ;
 int ipath_hol_event ;
 int ipath_kpiobufs ;
 void* ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 TYPE_3__ ipath_stats ;
 int ipath_write_kreg (struct ipath_devdata*,int ,unsigned long long) ;
 void* jiffies ;
 unsigned long long max (int ,int ) ;
 int setup_sdma (struct ipath_devdata*) ;
 int stub1 (struct ipath_devdata*) ;
 int stub2 (struct ipath_devdata*) ;
 int stub3 (struct ipath_devdata*) ;
 int stub4 (struct ipath_devdata*) ;
 int verify_interrupt ;

int ipath_init_chip(struct ipath_devdata *dd, int reinit)
{
 int ret = 0;
 u32 kpiobufs, defkbufs;
 u32 piobufs, uports;
 u64 val;
 struct ipath_portdata *pd;
 gfp_t gfp_flags = GFP_USER | __GFP_COMP;

 ret = init_housekeeping(dd, reinit);
 if (ret)
  goto done;





 if (ret == 2) {

  ret = -EPERM;
  goto done;
 }







 dd->ipath_rcvhdrcnt = max(dd->ipath_p0_rcvegrcnt, dd->ipath_rcvegrcnt);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_rcvhdrcnt,
    dd->ipath_rcvhdrcnt);







 piobufs = dd->ipath_piobcnt2k + dd->ipath_piobcnt4k;




 dd->ipath_pioavregs = ALIGN(piobufs, sizeof(u64) * BITS_PER_BYTE / 2)
  / (sizeof(u64) * BITS_PER_BYTE / 2);
 uports = dd->ipath_cfgports ? dd->ipath_cfgports - 1 : 0;
 if (piobufs > 144)
  defkbufs = 32 + dd->ipath_pioreserved;
 else
  defkbufs = 16 + dd->ipath_pioreserved;

 if (ipath_kpiobufs && (ipath_kpiobufs +
  (uports * IPATH_MIN_USER_PORT_BUFCNT)) > piobufs) {
  int i = (int) piobufs -
   (int) (uports * IPATH_MIN_USER_PORT_BUFCNT);
  if (i < 1)
   i = 1;
  dev_info(&dd->pcidev->dev, "Allocating %d PIO bufs of "
    "%d for kernel leaves too few for %d user ports "
    "(%d each); using %u\n", ipath_kpiobufs,
    piobufs, uports, IPATH_MIN_USER_PORT_BUFCNT, i);




  kpiobufs = i;
 } else if (ipath_kpiobufs)
  kpiobufs = ipath_kpiobufs;
 else
  kpiobufs = defkbufs;
 dd->ipath_lastport_piobuf = piobufs - kpiobufs;
 dd->ipath_pbufsport =
  uports ? dd->ipath_lastport_piobuf / uports : 0;

 dd->ipath_ports_extrabuf = dd->ipath_lastport_piobuf -
  (dd->ipath_pbufsport * uports);
 if (dd->ipath_ports_extrabuf)
  ipath_dbg("%u pbufs/port leaves some unused, add 1 buffer to "
   "ports <= %u\n", dd->ipath_pbufsport,
   dd->ipath_ports_extrabuf);
 dd->ipath_lastpioindex = 0;
 dd->ipath_lastpioindexl = dd->ipath_piobcnt2k;

 ipath_cdbg(VERBOSE, "%d PIO bufs for kernel out of %d total %u "
     "each for %u user ports\n", kpiobufs,
     piobufs, dd->ipath_pbufsport, uports);
 ret = dd->ipath_f_early_init(dd);
 if (ret) {
  ipath_dev_err(dd, "Early initialization failure\n");
  goto done;
 }





 dd->ipath_hdrqlast =
  dd->ipath_rcvhdrentsize * (dd->ipath_rcvhdrcnt - 1);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_rcvhdrentsize,
    dd->ipath_rcvhdrentsize);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_rcvhdrsize,
    dd->ipath_rcvhdrsize);

 if (!reinit) {
  ret = init_pioavailregs(dd);
  init_shadow_tids(dd);
  if (ret)
   goto done;
 }

 ipath_write_kreg(dd, dd->ipath_kregs->kr_sendpioavailaddr,
    dd->ipath_pioavailregs_phys);





 val = ipath_read_kreg64(dd, dd->ipath_kregs->kr_sendpioavailaddr);
 if (val != dd->ipath_pioavailregs_phys) {
  ipath_dev_err(dd, "Catastrophic software error, "
         "SendPIOAvailAddr written as %lx, "
         "read back as %llx\n",
         (unsigned long) dd->ipath_pioavailregs_phys,
         (unsigned long long) val);
  ret = -EINVAL;
  goto done;
 }

 ipath_write_kreg(dd, dd->ipath_kregs->kr_rcvbthqp, IPATH_KD_QP);





 ipath_write_kreg(dd, dd->ipath_kregs->kr_hwerrmask, 0ULL);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_hwerrclear,
    ~0ULL&~INFINIPATH_HWE_MEMBISTFAILED);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_control, 0ULL);





 if (bringup_link(dd)) {
  dev_info(&dd->pcidev->dev, "Failed to bringup IB link\n");
  ret = -ENETDOWN;
  goto done;
 }






 dd->ipath_f_init_hwerrors(dd);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_hwerrclear,
    ~0ULL&~INFINIPATH_HWE_MEMBISTFAILED);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_hwerrmask,
    dd->ipath_hwerrmask);


 ipath_write_kreg(dd, dd->ipath_kregs->kr_errorclear, -1LL);

 ipath_write_kreg(dd, dd->ipath_kregs->kr_errormask,
    ~dd->ipath_maskederrs);
 dd->ipath_maskederrs = 0;
 dd->ipath_errormask =
  ipath_read_kreg64(dd, dd->ipath_kregs->kr_errormask);

 ipath_write_kreg(dd, dd->ipath_kregs->kr_intclear, -1LL);

 dd->ipath_f_tidtemplate(dd);







 pd = dd->ipath_pd[0];
 if (reinit) {
  struct ipath_portdata *npd;






  npd = create_portdata0(dd);
  if (npd) {
   ipath_free_pddata(dd, pd);
   dd->ipath_pd[0] = npd;
   pd = npd;
  } else {
   ipath_dev_err(dd, "Unable to allocate portdata"
          " for port 0, failing\n");
   ret = -ENOMEM;
   goto done;
  }
 }
 ret = ipath_create_rcvhdrq(dd, pd);
 if (!ret)
  ret = create_port0_egr(dd);
 if (ret) {
  ipath_dev_err(dd, "failed to allocate kernel port's "
         "rcvhdrq and/or egr bufs\n");
  goto done;
 }
 else
  enable_chip(dd, reinit);


 ipath_chg_pioavailkernel(dd, 0, piobufs, 1);
 ipath_cancel_sends(dd, 1);

 if (!reinit) {




  dd->ipath_dummy_hdrq = dma_alloc_coherent(
   &dd->pcidev->dev, dd->ipath_pd[0]->port_rcvhdrq_size,
   &dd->ipath_dummy_hdrq_phys,
   gfp_flags);
  if (!dd->ipath_dummy_hdrq) {
   dev_info(&dd->pcidev->dev,
    "Couldn't allocate 0x%lx bytes for dummy hdrq\n",
    dd->ipath_pd[0]->port_rcvhdrq_size);

   dd->ipath_dummy_hdrq_phys = 0UL;
  }
 }





 ipath_write_kreg(dd, dd->ipath_kregs->kr_intclear, 0ULL);

 if (!dd->ipath_stats_timer_active) {





  init_timer(&dd->ipath_stats_timer);
  dd->ipath_stats_timer.function = ipath_get_faststats;
  dd->ipath_stats_timer.data = (unsigned long) dd;

  dd->ipath_stats_timer.expires = jiffies + 5 * HZ;

  add_timer(&dd->ipath_stats_timer);
  dd->ipath_stats_timer_active = 1;
 }


 if (dd->ipath_flags & IPATH_HAS_SEND_DMA)
  ret = setup_sdma(dd);


 init_timer(&dd->ipath_hol_timer);
 dd->ipath_hol_timer.function = ipath_hol_event;
 dd->ipath_hol_timer.data = (unsigned long)dd;
 dd->ipath_hol_state = IPATH_HOL_UP;

done:
 if (!ret) {
  *dd->ipath_statusp |= IPATH_STATUS_CHIP_PRESENT;
  if (!dd->ipath_f_intrsetup(dd)) {

   ipath_write_kreg(dd, dd->ipath_kregs->kr_intmask,
      -1LL);

   ipath_write_kreg(dd, dd->ipath_kregs->kr_intclear,
      0ULL);

   *dd->ipath_statusp |= IPATH_STATUS_INITTED;





   if (!reinit) {
    init_timer(&dd->ipath_intrchk_timer);
    dd->ipath_intrchk_timer.function =
     verify_interrupt;
    dd->ipath_intrchk_timer.data =
     (unsigned long) dd;
   }
   dd->ipath_intrchk_timer.expires = jiffies + HZ/2;
   add_timer(&dd->ipath_intrchk_timer);
  } else
   ipath_dev_err(dd, "No interrupts enabled, couldn't "
          "setup interrupt address\n");

  if (dd->ipath_cfgports > ipath_stats.sps_nports)
   ipath_stats.sps_nports = dd->ipath_cfgports;
 } else
  ipath_dbg("Failed (%d) to initialize chip\n", ret);



 return ret;
}
