
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_devdata {int ipath_ibcctrl; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int kr_ibcctrl; } ;


 int INFINIPATH_IBCC_LINKDOWNDEFAULTSTATE ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int ) ;

__attribute__((used)) static int set_linkdowndefaultstate(struct ipath_devdata *dd, int sleep)
{
 if (sleep)
  dd->ipath_ibcctrl |= INFINIPATH_IBCC_LINKDOWNDEFAULTSTATE;
 else
  dd->ipath_ibcctrl &= ~INFINIPATH_IBCC_LINKDOWNDEFAULTSTATE;
 ipath_write_kreg(dd, dd->ipath_kregs->kr_ibcctrl,
    dd->ipath_ibcctrl);
 return 0;
}
