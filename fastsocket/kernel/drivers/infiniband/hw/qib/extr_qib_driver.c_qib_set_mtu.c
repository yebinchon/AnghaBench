
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct qib_pportdata {int ibmaxlen; int ibmtu; int init_ibmaxlen; TYPE_1__* dd; } ;
struct TYPE_2__ {int (* f_set_ib_cfg ) (struct qib_pportdata*,int ,int ) ;} ;


 int EINVAL ;
 int QIB_IB_CFG_MTU ;
 int QIB_PIO_MAXIBHDR ;
 int ib_mtu_enum_to_int (int ) ;
 int qib_ibmtu ;
 int stub1 (struct qib_pportdata*,int ,int ) ;

int qib_set_mtu(struct qib_pportdata *ppd, u16 arg)
{
 u32 piosize;
 int ret, chk;

 if (arg != 256 && arg != 512 && arg != 1024 && arg != 2048 &&
     arg != 4096) {
  ret = -EINVAL;
  goto bail;
 }
 chk = ib_mtu_enum_to_int(qib_ibmtu);
 if (chk > 0 && arg > chk) {
  ret = -EINVAL;
  goto bail;
 }

 piosize = ppd->ibmaxlen;
 ppd->ibmtu = arg;

 if (arg >= (piosize - QIB_PIO_MAXIBHDR)) {

  if (piosize != ppd->init_ibmaxlen) {
   if (arg > piosize && arg <= ppd->init_ibmaxlen)
    piosize = ppd->init_ibmaxlen - 2 * sizeof(u32);
   ppd->ibmaxlen = piosize;
  }
 } else if ((arg + QIB_PIO_MAXIBHDR) != ppd->ibmaxlen) {
  piosize = arg + QIB_PIO_MAXIBHDR - 2 * sizeof(u32);
  ppd->ibmaxlen = piosize;
 }

 ppd->dd->f_set_ib_cfg(ppd, QIB_IB_CFG_MTU, 0);

 ret = 0;

bail:
 return ret;
}
