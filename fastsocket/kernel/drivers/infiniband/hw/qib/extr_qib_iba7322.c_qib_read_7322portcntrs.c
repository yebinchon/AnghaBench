
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct qib_pportdata {TYPE_1__* cpspec; } ;
struct qib_devdata {TYPE_2__* cspec; struct qib_pportdata* pport; } ;
typedef size_t loff_t ;
struct TYPE_4__ {size_t portcntrnamelen; int nportcntrs; } ;
struct TYPE_3__ {int * portcntrs; } ;


 int _PORT_64BIT_FLAG ;
 int _PORT_CNTR_IDXMASK ;
 int _PORT_VIRT_FLAG ;
 int* portcntr7322indices ;
 scalar_t__ portcntr7322names ;
 int qib_portcntr_7322 (struct qib_pportdata*,int) ;
 int read_7322_creg32_port (struct qib_pportdata*,int) ;
 int read_7322_creg_port (struct qib_pportdata*,int) ;

__attribute__((used)) static u32 qib_read_7322portcntrs(struct qib_devdata *dd, loff_t pos, u32 port,
      char **namep, u64 **cntrp)
{
 u32 ret;

 if (namep) {
  ret = dd->cspec->portcntrnamelen;
  if (pos >= ret)
   ret = 0;
  else
   *namep = (char *)portcntr7322names;
 } else {
  struct qib_pportdata *ppd = &dd->pport[port];
  u64 *cntr = ppd->cpspec->portcntrs;
  int i;

  ret = dd->cspec->nportcntrs * sizeof(u64);
  if (!cntr || pos >= ret) {

   ret = 0;
   goto done;
  }
  *cntrp = cntr;
  for (i = 0; i < dd->cspec->nportcntrs; i++) {
   if (portcntr7322indices[i] & _PORT_VIRT_FLAG)
    *cntr++ = qib_portcntr_7322(ppd,
     portcntr7322indices[i] &
     _PORT_CNTR_IDXMASK);
   else if (portcntr7322indices[i] & _PORT_64BIT_FLAG)
    *cntr++ = read_7322_creg_port(ppd,
        portcntr7322indices[i] &
         _PORT_CNTR_IDXMASK);
   else
    *cntr++ = read_7322_creg32_port(ppd,
        portcntr7322indices[i]);
  }
 }
done:
 return ret;
}
