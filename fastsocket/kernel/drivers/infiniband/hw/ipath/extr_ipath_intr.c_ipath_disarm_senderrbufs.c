
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipath_devdata {int ipath_piobcnt2k; int ipath_piobcnt4k; scalar_t__ ipath_lastcancel; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {scalar_t__ kr_sendbuffererror; } ;


 int __IPATH_DBG ;
 int __IPATH_DBG_WHICH (int,char*,unsigned long,unsigned long) ;
 int __IPATH_PKTDBG ;
 int ipath_debug ;
 int ipath_disarm_piobufs (struct ipath_devdata*,int,int) ;
 unsigned long ipath_read_kreg64 (struct ipath_devdata*,scalar_t__) ;
 scalar_t__ jiffies ;
 int printk (char*,...) ;
 scalar_t__ test_bit (int,unsigned long*) ;

void ipath_disarm_senderrbufs(struct ipath_devdata *dd)
{
 u32 piobcnt;
 unsigned long sbuf[4];




 piobcnt = dd->ipath_piobcnt2k + dd->ipath_piobcnt4k;

 sbuf[0] = ipath_read_kreg64(
  dd, dd->ipath_kregs->kr_sendbuffererror);
 sbuf[1] = ipath_read_kreg64(
  dd, dd->ipath_kregs->kr_sendbuffererror + 1);
 if (piobcnt > 128)
  sbuf[2] = ipath_read_kreg64(
   dd, dd->ipath_kregs->kr_sendbuffererror + 2);
 if (piobcnt > 192)
  sbuf[3] = ipath_read_kreg64(
   dd, dd->ipath_kregs->kr_sendbuffererror + 3);
 else
  sbuf[3] = 0;

 if (sbuf[0] || sbuf[1] || (piobcnt > 128 && (sbuf[2] || sbuf[3]))) {
  int i;
  if (ipath_debug & (__IPATH_PKTDBG|__IPATH_DBG) &&
   dd->ipath_lastcancel > jiffies) {
   __IPATH_DBG_WHICH(__IPATH_PKTDBG|__IPATH_DBG,
       "SendbufErrs %lx %lx", sbuf[0],
       sbuf[1]);
   if (ipath_debug & __IPATH_PKTDBG && piobcnt > 128)
    printk(" %lx %lx ", sbuf[2], sbuf[3]);
   printk("\n");
  }

  for (i = 0; i < piobcnt; i++)
   if (test_bit(i, sbuf))
    ipath_disarm_piobufs(dd, i, 1);

  dd->ipath_lastcancel = jiffies+3;
 }
}
