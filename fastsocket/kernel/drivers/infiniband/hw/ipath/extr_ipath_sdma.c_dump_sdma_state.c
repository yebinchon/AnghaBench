
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_devdata {TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int kr_senddmahead; int kr_senddmatail; int kr_senddmabufmask2; int kr_senddmabufmask1; int kr_senddmabufmask0; int kr_sendctrl; int kr_senddmastatus; } ;


 int VERBOSE ;
 int ipath_cdbg (int ,char*,unsigned long) ;
 unsigned long ipath_read_kreg64 (struct ipath_devdata*,int ) ;

__attribute__((used)) static void dump_sdma_state(struct ipath_devdata *dd)
{
 unsigned long reg;

 reg = ipath_read_kreg64(dd, dd->ipath_kregs->kr_senddmastatus);
 ipath_cdbg(VERBOSE, "kr_senddmastatus: 0x%016lx\n", reg);

 reg = ipath_read_kreg64(dd, dd->ipath_kregs->kr_sendctrl);
 ipath_cdbg(VERBOSE, "kr_sendctrl: 0x%016lx\n", reg);

 reg = ipath_read_kreg64(dd, dd->ipath_kregs->kr_senddmabufmask0);
 ipath_cdbg(VERBOSE, "kr_senddmabufmask0: 0x%016lx\n", reg);

 reg = ipath_read_kreg64(dd, dd->ipath_kregs->kr_senddmabufmask1);
 ipath_cdbg(VERBOSE, "kr_senddmabufmask1: 0x%016lx\n", reg);

 reg = ipath_read_kreg64(dd, dd->ipath_kregs->kr_senddmabufmask2);
 ipath_cdbg(VERBOSE, "kr_senddmabufmask2: 0x%016lx\n", reg);

 reg = ipath_read_kreg64(dd, dd->ipath_kregs->kr_senddmatail);
 ipath_cdbg(VERBOSE, "kr_senddmatail: 0x%016lx\n", reg);

 reg = ipath_read_kreg64(dd, dd->ipath_kregs->kr_senddmahead);
 ipath_cdbg(VERBOSE, "kr_senddmahead: 0x%016lx\n", reg);
}
