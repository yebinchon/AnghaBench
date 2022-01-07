
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u32 ;
struct qib_pportdata {unsigned int lid; unsigned int lmc; int port; struct qib_devdata* dd; } ;
struct qib_devdata {int unit; int pcidev; int (* f_set_ib_cfg ) (struct qib_pportdata*,int ,unsigned int) ;} ;


 int QIB_IB_CFG_LIDLMC ;
 int qib_devinfo (int ,char*,int ,int ,unsigned int) ;
 int stub1 (struct qib_pportdata*,int ,unsigned int) ;

int qib_set_lid(struct qib_pportdata *ppd, u32 lid, u8 lmc)
{
 struct qib_devdata *dd = ppd->dd;
 ppd->lid = lid;
 ppd->lmc = lmc;

 dd->f_set_ib_cfg(ppd, QIB_IB_CFG_LIDLMC,
    lid | (~((1U << lmc) - 1)) << 16);

 qib_devinfo(dd->pcidev, "IB%u:%u got a lid: 0x%x\n",
      dd->unit, ppd->port, lid);

 return 0;
}
