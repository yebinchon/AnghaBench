
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ipath_devdata {scalar_t__* ipath_pkeys; int * ipath_pkeyrefs; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ atomic_dec_and_test (int *) ;

__attribute__((used)) static int rm_pkey(struct ipath_devdata *dd, u16 key)
{
 int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(dd->ipath_pkeys); i++) {
  if (dd->ipath_pkeys[i] != key)
   continue;
  if (atomic_dec_and_test(&dd->ipath_pkeyrefs[i])) {
   dd->ipath_pkeys[i] = 0;
   ret = 1;
   goto bail;
  }
  break;
 }

 ret = 0;

bail:
 return ret;
}
