
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct qib_devdata {int flags; int control; int revision; TYPE_1__* cspec; int lbus_width; int * kregbase; scalar_t__ int_counter; int unit; } ;
struct TYPE_2__ {int gpio_mask; scalar_t__ iblnkerrdelta; scalar_t__ ibsymdelta; scalar_t__ ibdeltainprog; } ;


 int QIB_INITTED ;
 int QIB_PRESENT ;
 int QLOGIC_IB_C_RESET ;
 size_t kr_control ;
 int kr_gpio_mask ;
 size_t kr_revision ;
 int mb () ;
 int msleep (int) ;
 int qib_6120_init_hwerrors (struct qib_devdata*) ;
 int qib_6120_set_intr_state (struct qib_devdata*,int ) ;
 int qib_dev_err (struct qib_devdata*,char*,...) ;
 int qib_pcie_getcmd (struct qib_devdata*,int *,int *,int *) ;
 scalar_t__ qib_pcie_params (struct qib_devdata*,int ,int *,int *) ;
 int qib_pcie_reenable (struct qib_devdata*,int ,int ,int ) ;
 int qib_reinit_intr (struct qib_devdata*) ;
 int qib_write_kreg (struct qib_devdata*,int ,int ) ;
 int readq (int *) ;
 int writeq (int,int *) ;

__attribute__((used)) static int qib_6120_setup_reset(struct qib_devdata *dd)
{
 u64 val;
 int i;
 int ret;
 u16 cmdval;
 u8 int_line, clinesz;

 qib_pcie_getcmd(dd, &cmdval, &int_line, &clinesz);


 qib_dev_err(dd, "Resetting InfiniPath unit %u\n", dd->unit);


 qib_6120_set_intr_state(dd, 0);

 dd->cspec->ibdeltainprog = 0;
 dd->cspec->ibsymdelta = 0;
 dd->cspec->iblnkerrdelta = 0;






 dd->flags &= ~(QIB_INITTED | QIB_PRESENT);
 dd->int_counter = 0;
 val = dd->control | QLOGIC_IB_C_RESET;
 writeq(val, &dd->kregbase[kr_control]);
 mb();

 for (i = 1; i <= 5; i++) {





  msleep(1000 + (1 + i) * 2000);

  qib_pcie_reenable(dd, cmdval, int_line, clinesz);





  val = readq(&dd->kregbase[kr_revision]);
  if (val == dd->revision) {
   dd->flags |= QIB_PRESENT;
   ret = qib_reinit_intr(dd);
   goto bail;
  }
 }
 ret = 0;

bail:
 if (ret) {
  if (qib_pcie_params(dd, dd->lbus_width, ((void*)0), ((void*)0)))
   qib_dev_err(dd,
    "Reset failed to setup PCIe or interrupts; continuing anyway\n");

  qib_6120_init_hwerrors(dd);

  qib_write_kreg(dd, kr_gpio_mask, dd->cspec->gpio_mask);

  qib_6120_init_hwerrors(dd);
 }
 return ret;
}
