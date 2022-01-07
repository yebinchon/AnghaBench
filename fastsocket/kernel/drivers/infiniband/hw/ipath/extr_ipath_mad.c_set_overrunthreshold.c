
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct ipath_devdata {unsigned int ipath_ibcctrl; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int kr_ibcctrl; } ;


 unsigned int INFINIPATH_IBCC_OVERRUNTHRESHOLD_MASK ;
 unsigned int INFINIPATH_IBCC_OVERRUNTHRESHOLD_SHIFT ;
 int ipath_write_kreg (struct ipath_devdata*,int ,unsigned int) ;

__attribute__((used)) static int set_overrunthreshold(struct ipath_devdata *dd, unsigned n)
{
 unsigned v;

 v = (dd->ipath_ibcctrl >> INFINIPATH_IBCC_OVERRUNTHRESHOLD_SHIFT) &
  INFINIPATH_IBCC_OVERRUNTHRESHOLD_MASK;
 if (v != n) {
  dd->ipath_ibcctrl &=
   ~(INFINIPATH_IBCC_OVERRUNTHRESHOLD_MASK <<
     INFINIPATH_IBCC_OVERRUNTHRESHOLD_SHIFT);
  dd->ipath_ibcctrl |=
   (u64) n << INFINIPATH_IBCC_OVERRUNTHRESHOLD_SHIFT;
  ipath_write_kreg(dd, dd->ipath_kregs->kr_ibcctrl,
     dd->ipath_ibcctrl);
 }
 return 0;
}
