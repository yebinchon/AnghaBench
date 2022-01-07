
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qib_pportdata {int* pkeys; int * pkeyrefs; } ;


 int ARRAY_SIZE (int*) ;
 int EBUSY ;
 int EEXIST ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;

__attribute__((used)) static int add_pkey(struct qib_pportdata *ppd, u16 key)
{
 int i;
 u16 lkey = key & 0x7FFF;
 int any = 0;
 int ret;

 if (lkey == 0x7FFF) {
  ret = 0;
  goto bail;
 }


 for (i = 0; i < ARRAY_SIZE(ppd->pkeys); i++) {
  if (!ppd->pkeys[i]) {
   any++;
   continue;
  }

  if (ppd->pkeys[i] == key) {
   if (atomic_inc_return(&ppd->pkeyrefs[i]) > 1) {
    ret = 0;
    goto bail;
   }

   atomic_dec(&ppd->pkeyrefs[i]);
   any++;
  }





  if ((ppd->pkeys[i] & 0x7FFF) == lkey) {
   ret = -EEXIST;
   goto bail;
  }
 }
 if (!any) {
  ret = -EBUSY;
  goto bail;
 }
 for (i = 0; i < ARRAY_SIZE(ppd->pkeys); i++) {
  if (!ppd->pkeys[i] &&
      atomic_inc_return(&ppd->pkeyrefs[i]) == 1) {

   ppd->pkeys[i] = key;
   ret = 1;
   goto bail;
  }
 }
 ret = -EBUSY;

bail:
 return ret;
}
