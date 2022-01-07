
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ipath_devdata {int ipath_control; int ipath_ibmaxlen; int ibcc_mpl_shift; int ipath_ibcctrl; int (* ipath_f_bringup_serdes ) (struct ipath_devdata*) ;TYPE_2__* ipath_kregs; TYPE_1__* pcidev; int ipath_flags; } ;
struct TYPE_4__ {int kr_control; int kr_scratch; int kr_ibcctrl; } ;
struct TYPE_3__ {int dev; } ;


 int INFINIPATH_C_LINKENABLE ;
 unsigned long long INFINIPATH_IBCC_CREDITSCALE_SHIFT ;
 int INFINIPATH_IBCC_FLOWCTRLPERIOD_SHIFT ;
 int INFINIPATH_IBCC_FLOWCTRLWATERMARK_SHIFT ;
 int INFINIPATH_IBCC_LINKINITCMD_DISABLE ;
 int INFINIPATH_IBCC_LINKINITCMD_SHIFT ;
 int INFINIPATH_IBCC_OVERRUNTHRESHOLD_SHIFT ;
 int INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT ;
 int IPATH_IB_LINK_DISABLED ;
 int VERBOSE ;
 int dev_info (int *,char*) ;
 int ipath_cdbg (int ,char*,unsigned long long) ;
 int ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int) ;
 int stub1 (struct ipath_devdata*) ;

__attribute__((used)) static int bringup_link(struct ipath_devdata *dd)
{
 u64 val, ibc;
 int ret = 0;


 dd->ipath_control &= ~INFINIPATH_C_LINKENABLE;
 ipath_write_kreg(dd, dd->ipath_kregs->kr_control,
    dd->ipath_control);





 val = (dd->ipath_ibmaxlen >> 2) + 1;
 ibc = val << dd->ibcc_mpl_shift;


 ibc |= 0x5ULL << INFINIPATH_IBCC_FLOWCTRLWATERMARK_SHIFT;





 ibc |= 0x3ULL << INFINIPATH_IBCC_FLOWCTRLPERIOD_SHIFT;

 ibc |= 0xfULL << INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT;

 ibc |= 4ULL << INFINIPATH_IBCC_CREDITSCALE_SHIFT;

 ibc |= 0xfULL << INFINIPATH_IBCC_OVERRUNTHRESHOLD_SHIFT;

 dd->ipath_ibcctrl = ibc;







 ibc |= INFINIPATH_IBCC_LINKINITCMD_DISABLE <<
  INFINIPATH_IBCC_LINKINITCMD_SHIFT;
 dd->ipath_flags |= IPATH_IB_LINK_DISABLED;
 ipath_cdbg(VERBOSE, "Writing 0x%llx to ibcctrl\n",
     (unsigned long long) ibc);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_ibcctrl, ibc);


 val = ipath_read_kreg64(dd, dd->ipath_kregs->kr_scratch);

 ret = dd->ipath_f_bringup_serdes(dd);

 if (ret)
  dev_info(&dd->pcidev->dev, "Could not initialize SerDes, "
    "not usable\n");
 else {

  dd->ipath_control |= INFINIPATH_C_LINKENABLE;
  ipath_write_kreg(dd, dd->ipath_kregs->kr_control,
     dd->ipath_control);
 }

 return ret;
}
