
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct qib_pportdata {int dummy; } ;
struct qib_devdata {TYPE_1__* cspec; struct qib_pportdata* pport; } ;
typedef size_t loff_t ;
struct TYPE_2__ {size_t portcntrnamelen; int nportcntrs; int * portcntrs; } ;


 int _PORT_VIRT_FLAG ;
 int* portcntr6120indices ;
 scalar_t__ portcntr6120names ;
 int qib_portcntr_6120 (struct qib_pportdata*,int) ;
 int read_6120_creg32 (struct qib_devdata*,int) ;

__attribute__((used)) static u32 qib_read_6120portcntrs(struct qib_devdata *dd, loff_t pos, u32 port,
      char **namep, u64 **cntrp)
{
 u32 ret;

 if (namep) {
  ret = dd->cspec->portcntrnamelen;
  if (pos >= ret)
   ret = 0;
  else
   *namep = (char *)portcntr6120names;
 } else {
  u64 *cntr = dd->cspec->portcntrs;
  struct qib_pportdata *ppd = &dd->pport[port];
  int i;

  ret = dd->cspec->nportcntrs * sizeof(u64);
  if (!cntr || pos >= ret) {

   ret = 0;
   goto done;
  }
  *cntrp = cntr;
  for (i = 0; i < dd->cspec->nportcntrs; i++) {
   if (portcntr6120indices[i] & _PORT_VIRT_FLAG)
    *cntr++ = qib_portcntr_6120(ppd,
     portcntr6120indices[i] &
     ~_PORT_VIRT_FLAG);
   else
    *cntr++ = read_6120_creg32(dd,
        portcntr6120indices[i]);
  }
 }
done:
 return ret;
}
