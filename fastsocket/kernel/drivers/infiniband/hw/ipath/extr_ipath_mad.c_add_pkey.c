
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ipath_devdata {int* ipath_pkeys; int * ipath_pkeyrefs; } ;
struct TYPE_2__ {int* sps_pkeys; } ;


 int ARRAY_SIZE (int*) ;
 int EBUSY ;
 int EEXIST ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 TYPE_1__ ipath_stats ;

__attribute__((used)) static int add_pkey(struct ipath_devdata *dd, u16 key)
{
 int i;
 u16 lkey = key & 0x7FFF;
 int any = 0;
 int ret;

 if (lkey == 0x7FFF) {
  ret = 0;
  goto bail;
 }


 for (i = 0; i < ARRAY_SIZE(dd->ipath_pkeys); i++) {
  if (!dd->ipath_pkeys[i]) {
   any++;
   continue;
  }

  if (dd->ipath_pkeys[i] == key) {
   if (atomic_inc_return(&dd->ipath_pkeyrefs[i]) > 1) {
    ret = 0;
    goto bail;
   }

   atomic_dec(&dd->ipath_pkeyrefs[i]);
   any++;
  }





  if ((dd->ipath_pkeys[i] & 0x7FFF) == lkey) {
   ret = -EEXIST;
   goto bail;
  }
 }
 if (!any) {
  ret = -EBUSY;
  goto bail;
 }
 for (i = 0; i < ARRAY_SIZE(dd->ipath_pkeys); i++) {
  if (!dd->ipath_pkeys[i] &&
      atomic_inc_return(&dd->ipath_pkeyrefs[i]) == 1) {

   ipath_stats.sps_pkeys[i] = lkey;
   dd->ipath_pkeys[i] = key;
   ret = 1;
   goto bail;
  }
 }
 ret = -EBUSY;

bail:
 return ret;
}
