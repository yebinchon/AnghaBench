
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qib_devdata {int flags; } ;


 int QIB_BADINTR ;
 int kr_intclear ;
 int kr_intmask ;
 int qib_write_kreg (struct qib_devdata*,int ,unsigned long long) ;

__attribute__((used)) static void qib_7220_set_intr_state(struct qib_devdata *dd, u32 enable)
{
 if (enable) {
  if (dd->flags & QIB_BADINTR)
   return;
  qib_write_kreg(dd, kr_intmask, ~0ULL);

  qib_write_kreg(dd, kr_intclear, 0ULL);
 } else
  qib_write_kreg(dd, kr_intmask, 0ULL);
}
