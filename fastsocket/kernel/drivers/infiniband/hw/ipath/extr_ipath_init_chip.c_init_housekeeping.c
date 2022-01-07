
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct ipath_devdata {int ipath_flags; int ipath_revision; int ipath_sregbase; int ipath_cregbase; int ipath_uregbase; int ipath_pcirev; int ipath_majrev; int ipath_minrev; int (* ipath_f_get_boardname ) (struct ipath_devdata*,char*,int) ;int ipath_boardversion; void* ipath_boardrev; TYPE_1__* ipath_kregs; int ipath_kregbase; scalar_t__ ipath_rcvhdrsize; } ;
struct TYPE_2__ {int kr_errorclear; int kr_hwdiagctrl; int kr_userregbase; int kr_counterregbase; int kr_sendregbase; int kr_revision; } ;


 int ENODEV ;
 int ENOSYS ;
 int INFINIPATH_E_RESET ;
 unsigned int INFINIPATH_R_ARCH_MASK ;
 int INFINIPATH_R_ARCH_SHIFT ;
 int INFINIPATH_R_BOARDID_MASK ;
 int INFINIPATH_R_BOARDID_SHIFT ;
 int INFINIPATH_R_CHIPREVMAJOR_MASK ;
 int INFINIPATH_R_CHIPREVMAJOR_SHIFT ;
 int INFINIPATH_R_CHIPREVMINOR_MASK ;
 int INFINIPATH_R_CHIPREVMINOR_SHIFT ;
 int INFINIPATH_R_SOFTWARE_MASK ;
 int INFINIPATH_R_SOFTWARE_SHIFT ;
 int IPATH_CHIP_SWVERSION ;
 int IPATH_CHIP_VERS_MAJ ;
 int IPATH_CHIP_VERS_MIN ;
 int IPATH_LINKACTIVE ;
 int IPATH_LINKARMED ;
 int IPATH_LINKDOWN ;
 int IPATH_LINKINIT ;
 int IPATH_LINKUNK ;
 int IPATH_PRESENT ;
 int VERBOSE ;
 int init_chip_first (struct ipath_devdata*) ;
 int init_chip_reset (struct ipath_devdata*) ;
 int ipath_cdbg (int ,char*,...) ;
 int ipath_dbg (char*,int ) ;
 int ipath_dev_err (struct ipath_devdata*,char*,...) ;
 void* ipath_read_kreg32 (struct ipath_devdata*,int ) ;
 int ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int ) ;
 int snprintf (int ,int,char*,int,int,char*,unsigned int,int,int,int,unsigned int) ;
 int stub1 (struct ipath_devdata*,char*,int) ;

__attribute__((used)) static int init_housekeeping(struct ipath_devdata *dd, int reinit)
{
 char boardn[40];
 int ret = 0;






 dd->ipath_rcvhdrsize = 0;
 dd->ipath_flags |= IPATH_LINKUNK | IPATH_PRESENT;
 dd->ipath_flags &= ~(IPATH_LINKACTIVE | IPATH_LINKARMED |
        IPATH_LINKDOWN | IPATH_LINKINIT);

 ipath_cdbg(VERBOSE, "Try to read spc chip revision\n");
 dd->ipath_revision =
  ipath_read_kreg64(dd, dd->ipath_kregs->kr_revision);






 dd->ipath_sregbase =
  ipath_read_kreg32(dd, dd->ipath_kregs->kr_sendregbase);
 dd->ipath_cregbase =
  ipath_read_kreg32(dd, dd->ipath_kregs->kr_counterregbase);
 dd->ipath_uregbase =
  ipath_read_kreg32(dd, dd->ipath_kregs->kr_userregbase);
 ipath_cdbg(VERBOSE, "ipath_kregbase %p, sendbase %x usrbase %x, "
     "cntrbase %x\n", dd->ipath_kregbase, dd->ipath_sregbase,
     dd->ipath_uregbase, dd->ipath_cregbase);
 if ((dd->ipath_revision & 0xffffffff) == 0xffffffff
     || (dd->ipath_sregbase & 0xffffffff) == 0xffffffff
     || (dd->ipath_cregbase & 0xffffffff) == 0xffffffff
     || (dd->ipath_uregbase & 0xffffffff) == 0xffffffff) {
  ipath_dev_err(dd, "Register read failures from chip, "
         "giving up initialization\n");
  dd->ipath_flags &= ~IPATH_PRESENT;
  ret = -ENODEV;
  goto done;
 }



 ipath_write_kreg (dd, dd->ipath_kregs->kr_hwdiagctrl, 0);


 ipath_write_kreg(dd, dd->ipath_kregs->kr_errorclear,
    INFINIPATH_E_RESET);

 ipath_cdbg(VERBOSE, "Revision %llx (PCI %x)\n",
     (unsigned long long) dd->ipath_revision,
     dd->ipath_pcirev);

 if (((dd->ipath_revision >> INFINIPATH_R_SOFTWARE_SHIFT) &
      INFINIPATH_R_SOFTWARE_MASK) != IPATH_CHIP_SWVERSION) {
  ipath_dev_err(dd, "Driver only handles version %d, "
         "chip swversion is %d (%llx), failng\n",
         IPATH_CHIP_SWVERSION,
         (int)(dd->ipath_revision >>
        INFINIPATH_R_SOFTWARE_SHIFT) &
         INFINIPATH_R_SOFTWARE_MASK,
         (unsigned long long) dd->ipath_revision);
  ret = -ENOSYS;
  goto done;
 }
 dd->ipath_majrev = (u8) ((dd->ipath_revision >>
      INFINIPATH_R_CHIPREVMAJOR_SHIFT) &
     INFINIPATH_R_CHIPREVMAJOR_MASK);
 dd->ipath_minrev = (u8) ((dd->ipath_revision >>
      INFINIPATH_R_CHIPREVMINOR_SHIFT) &
     INFINIPATH_R_CHIPREVMINOR_MASK);
 dd->ipath_boardrev = (u8) ((dd->ipath_revision >>
        INFINIPATH_R_BOARDID_SHIFT) &
       INFINIPATH_R_BOARDID_MASK);

 ret = dd->ipath_f_get_boardname(dd, boardn, sizeof boardn);

 snprintf(dd->ipath_boardversion, sizeof(dd->ipath_boardversion),
   "ChipABI %u.%u, %s, InfiniPath%u %u.%u, PCI %u, "
   "SW Compat %u\n",
   IPATH_CHIP_VERS_MAJ, IPATH_CHIP_VERS_MIN, boardn,
   (unsigned)(dd->ipath_revision >> INFINIPATH_R_ARCH_SHIFT) &
   INFINIPATH_R_ARCH_MASK,
   dd->ipath_majrev, dd->ipath_minrev, dd->ipath_pcirev,
   (unsigned)(dd->ipath_revision >>
       INFINIPATH_R_SOFTWARE_SHIFT) &
   INFINIPATH_R_SOFTWARE_MASK);

 ipath_dbg("%s", dd->ipath_boardversion);

 if (ret)
  goto done;

 if (reinit)
  ret = init_chip_reset(dd);
 else
  ret = init_chip_first(dd);

done:
 return ret;
}
