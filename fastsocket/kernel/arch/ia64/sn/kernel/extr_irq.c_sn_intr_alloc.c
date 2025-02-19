
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sn_irq_info {int dummy; } ;
struct ia64_sal_retval {scalar_t__ status; scalar_t__ v0; } ;
typedef scalar_t__ nasid_t ;


 int SAL_CALL_NOLOCK (struct ia64_sal_retval,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ SAL_INTR_ALLOC ;
 scalar_t__ SN_SAL_IOIF_INTERRUPT ;
 int __pa (struct sn_irq_info*) ;

u64 sn_intr_alloc(nasid_t local_nasid, int local_widget,
         struct sn_irq_info *sn_irq_info,
         int req_irq, nasid_t req_nasid,
         int req_slice)
{
 struct ia64_sal_retval ret_stuff;
 ret_stuff.status = 0;
 ret_stuff.v0 = 0;

 SAL_CALL_NOLOCK(ret_stuff, (u64) SN_SAL_IOIF_INTERRUPT,
   (u64) SAL_INTR_ALLOC, (u64) local_nasid,
   (u64) local_widget, __pa(sn_irq_info), (u64) req_irq,
   (u64) req_nasid, (u64) req_slice);

 return ret_stuff.status;
}
