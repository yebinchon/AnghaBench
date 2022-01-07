
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct qib_pportdata {int lflags_lock; int lflags; TYPE_1__* cpspec; } ;
struct qib_devdata {int flags; int control; int revision; int num_pports; struct qib_pportdata* pport; TYPE_3__* cspec; int lbus_width; int * kregbase; scalar_t__ int_counter; int unit; } ;
struct TYPE_6__ {int entry; } ;
struct TYPE_8__ {TYPE_2__ msix; } ;
struct TYPE_7__ {int num_msix_entries; TYPE_4__* msix_entries; } ;
struct TYPE_5__ {scalar_t__ ibmalfdelta; scalar_t__ iblnkerrdelta; scalar_t__ ibsymdelta; scalar_t__ ibdeltainprog; } ;


 int GFP_KERNEL ;
 int QIBL_IB_AUTONEG_FAILED ;
 int QIBL_IB_FORCE_NOTIFY ;
 int QIB_7322_MsixTable_OFFS ;
 int QIB_BADINTR ;
 int QIB_DOING_RESET ;
 int QIB_INITTED ;
 int QIB_PRESENT ;
 int QLOGIC_IB_C_RESET ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 size_t kr_control ;
 size_t kr_revision ;
 int msleep (int) ;
 int qib_7322_nomsix (struct qib_devdata*) ;
 int qib_7322_set_intr_state (struct qib_devdata*,int ) ;
 int qib_dev_err (struct qib_devdata*,char*,...) ;
 int qib_pcie_getcmd (struct qib_devdata*,int *,int *,int *) ;
 scalar_t__ qib_pcie_params (struct qib_devdata*,int ,int*,TYPE_4__*) ;
 int qib_pcie_reenable (struct qib_devdata*,int ,int ,int ) ;
 int qib_read_kreg64 (struct qib_devdata*,int) ;
 int qib_setup_7322_interrupt (struct qib_devdata*,int) ;
 int qib_write_kreg (struct qib_devdata*,int,int) ;
 int readq (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_7322_init_portregs (struct qib_pportdata*) ;
 int write_7322_initregs (struct qib_devdata*) ;
 int writeq (int,int *) ;

__attribute__((used)) static int qib_do_7322_reset(struct qib_devdata *dd)
{
 u64 val;
 u64 *msix_vecsave;
 int i, msix_entries, ret = 1;
 u16 cmdval;
 u8 int_line, clinesz;
 unsigned long flags;


 qib_dev_err(dd, "Resetting InfiniPath unit %u\n", dd->unit);

 qib_pcie_getcmd(dd, &cmdval, &int_line, &clinesz);

 msix_entries = dd->cspec->num_msix_entries;


 qib_7322_set_intr_state(dd, 0);

 if (msix_entries) {
  qib_7322_nomsix(dd);

  msix_vecsave = kmalloc(2 * dd->cspec->num_msix_entries *
   sizeof(u64), GFP_KERNEL);
  if (!msix_vecsave)
   qib_dev_err(dd, "No mem to save MSIx data\n");
 } else
  msix_vecsave = ((void*)0);
 for (i = 0; i < msix_entries; i++) {
  u64 vecaddr, vecdata;
  vecaddr = qib_read_kreg64(dd, 2 * i +
      (QIB_7322_MsixTable_OFFS / sizeof(u64)));
  vecdata = qib_read_kreg64(dd, 1 + 2 * i +
      (QIB_7322_MsixTable_OFFS / sizeof(u64)));
  if (msix_vecsave) {
   msix_vecsave[2 * i] = vecaddr;

   msix_vecsave[1 + 2 * i] = vecdata & ~0x100000000ULL;
  }
 }

 dd->pport->cpspec->ibdeltainprog = 0;
 dd->pport->cpspec->ibsymdelta = 0;
 dd->pport->cpspec->iblnkerrdelta = 0;
 dd->pport->cpspec->ibmalfdelta = 0;
 dd->int_counter = 0;






 dd->flags &= ~(QIB_INITTED | QIB_PRESENT | QIB_BADINTR);
 dd->flags |= QIB_DOING_RESET;
 val = dd->control | QLOGIC_IB_C_RESET;
 writeq(val, &dd->kregbase[kr_control]);

 for (i = 1; i <= 5; i++) {





  msleep(1000 + (1 + i) * 3000);

  qib_pcie_reenable(dd, cmdval, int_line, clinesz);





  val = readq(&dd->kregbase[kr_revision]);
  if (val == dd->revision)
   break;
  if (i == 5) {
   qib_dev_err(dd,
    "Failed to initialize after reset, unusable\n");
   ret = 0;
   goto bail;
  }
 }

 dd->flags |= QIB_PRESENT;

 if (msix_entries) {

  for (i = 0; i < msix_entries; i++) {
   dd->cspec->msix_entries[i].msix.entry = i;
   if (!msix_vecsave || !msix_vecsave[2 * i])
    continue;
   qib_write_kreg(dd, 2 * i +
    (QIB_7322_MsixTable_OFFS / sizeof(u64)),
    msix_vecsave[2 * i]);
   qib_write_kreg(dd, 1 + 2 * i +
    (QIB_7322_MsixTable_OFFS / sizeof(u64)),
    msix_vecsave[1 + 2 * i]);
  }
 }


 for (i = 0; i < dd->num_pports; ++i)
  write_7322_init_portregs(&dd->pport[i]);
 write_7322_initregs(dd);

 if (qib_pcie_params(dd, dd->lbus_width,
       &dd->cspec->num_msix_entries,
       dd->cspec->msix_entries))
  qib_dev_err(dd,
   "Reset failed to setup PCIe or interrupts; continuing anyway\n");

 qib_setup_7322_interrupt(dd, 1);

 for (i = 0; i < dd->num_pports; ++i) {
  struct qib_pportdata *ppd = &dd->pport[i];

  spin_lock_irqsave(&ppd->lflags_lock, flags);
  ppd->lflags |= QIBL_IB_FORCE_NOTIFY;
  ppd->lflags &= ~QIBL_IB_AUTONEG_FAILED;
  spin_unlock_irqrestore(&ppd->lflags_lock, flags);
 }

bail:
 dd->flags &= ~QIB_DOING_RESET;
 kfree(msix_vecsave);
 return ret;
}
