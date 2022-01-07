
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct ipath_devdata {int ipath_flags; unsigned int ipath_rcvhdrsize; int ipath_rcvhdrentsize; TYPE_2__* ipath_kregs; TYPE_1__* pcidev; } ;
struct TYPE_4__ {int kr_rcvhdrsize; } ;
struct TYPE_3__ {int dev; } ;


 int EAGAIN ;
 int EOVERFLOW ;
 int IPATH_RCVHDRSZ_SET ;
 int VERBOSE ;
 int dev_info (int *,char*,unsigned int,unsigned int) ;
 int ipath_cdbg (int ,char*,unsigned int) ;
 int ipath_dbg (char*,unsigned int,scalar_t__) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,unsigned int) ;

int ipath_setrcvhdrsize(struct ipath_devdata *dd, unsigned rhdrsize)
{
 int ret = 0;

 if (dd->ipath_flags & IPATH_RCVHDRSZ_SET) {
  if (dd->ipath_rcvhdrsize != rhdrsize) {
   dev_info(&dd->pcidev->dev,
     "Error: can't set protocol header "
     "size %u, already %u\n",
     rhdrsize, dd->ipath_rcvhdrsize);
   ret = -EAGAIN;
  } else
   ipath_cdbg(VERBOSE, "Reuse same protocol header "
       "size %u\n", dd->ipath_rcvhdrsize);
 } else if (rhdrsize > (dd->ipath_rcvhdrentsize -
          (sizeof(u64) / sizeof(u32)))) {
  ipath_dbg("Error: can't set protocol header size %u "
     "(> max %u)\n", rhdrsize,
     dd->ipath_rcvhdrentsize -
     (u32) (sizeof(u64) / sizeof(u32)));
  ret = -EOVERFLOW;
 } else {
  dd->ipath_flags |= IPATH_RCVHDRSZ_SET;
  dd->ipath_rcvhdrsize = rhdrsize;
  ipath_write_kreg(dd, dd->ipath_kregs->kr_rcvhdrsize,
     dd->ipath_rcvhdrsize);
  ipath_cdbg(VERBOSE, "Set protocol header size to %u\n",
      dd->ipath_rcvhdrsize);
 }
 return ret;
}
