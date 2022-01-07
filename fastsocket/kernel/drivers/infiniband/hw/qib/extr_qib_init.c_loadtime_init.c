
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int function; } ;
struct qib_devdata {int revision; TYPE_1__ intrchk_timer; int eep_lock; int eep_st_lock; int qib_diag_trans_lock; int uctxt_lock; int sendctrl_lock; int pioavail_lock; int boardversion; int pcidev; } ;


 int ENOSYS ;
 int QIB_CHIP_SWVERSION ;
 int QLOGIC_IB_R_EMULATOR_MASK ;
 int QLOGIC_IB_R_SOFTWARE_MASK ;
 int QLOGIC_IB_R_SOFTWARE_SHIFT ;
 int init_pioavailregs (struct qib_devdata*) ;
 int init_shadow_tids (struct qib_devdata*) ;
 int init_timer (TYPE_1__*) ;
 int mutex_init (int *) ;
 int qib_dev_err (struct qib_devdata*,char*,int,int,unsigned long long) ;
 int qib_devinfo (int ,char*,int ) ;
 int qib_get_eeprom_info (struct qib_devdata*) ;
 scalar_t__ qib_mini_init ;
 int spin_lock_init (int *) ;
 int verify_interrupt ;

__attribute__((used)) static int loadtime_init(struct qib_devdata *dd)
{
 int ret = 0;

 if (((dd->revision >> QLOGIC_IB_R_SOFTWARE_SHIFT) &
      QLOGIC_IB_R_SOFTWARE_MASK) != QIB_CHIP_SWVERSION) {
  qib_dev_err(dd,
   "Driver only handles version %d, chip swversion is %d (%llx), failng\n",
   QIB_CHIP_SWVERSION,
   (int)(dd->revision >>
    QLOGIC_IB_R_SOFTWARE_SHIFT) &
    QLOGIC_IB_R_SOFTWARE_MASK,
   (unsigned long long) dd->revision);
  ret = -ENOSYS;
  goto done;
 }

 if (dd->revision & QLOGIC_IB_R_EMULATOR_MASK)
  qib_devinfo(dd->pcidev, "%s", dd->boardversion);

 spin_lock_init(&dd->pioavail_lock);
 spin_lock_init(&dd->sendctrl_lock);
 spin_lock_init(&dd->uctxt_lock);
 spin_lock_init(&dd->qib_diag_trans_lock);
 spin_lock_init(&dd->eep_st_lock);
 mutex_init(&dd->eep_lock);

 if (qib_mini_init)
  goto done;

 ret = init_pioavailregs(dd);
 init_shadow_tids(dd);

 qib_get_eeprom_info(dd);


 init_timer(&dd->intrchk_timer);
 dd->intrchk_timer.function = verify_interrupt;
 dd->intrchk_timer.data = (unsigned long) dd;

done:
 return ret;
}
