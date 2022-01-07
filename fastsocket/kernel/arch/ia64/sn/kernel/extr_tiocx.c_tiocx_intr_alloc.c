
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ia64_sal_retval {scalar_t__ status; scalar_t__ v0; } ;
typedef int nasid_t ;


 int SAL_INTR_ALLOC ;
 int SN_SAL_IOIF_INTERRUPT ;
 int ia64_sal_oemcall_nolock (struct ia64_sal_retval*,int ,int ,int ,int,scalar_t__,int,int ,int) ;

__attribute__((used)) static inline u64 tiocx_intr_alloc(nasid_t nasid, int widget,
     u64 sn_irq_info,
     int req_irq, nasid_t req_nasid,
     int req_slice)
{
 struct ia64_sal_retval rv;
 rv.status = 0;
 rv.v0 = 0;

 ia64_sal_oemcall_nolock(&rv, SN_SAL_IOIF_INTERRUPT,
    SAL_INTR_ALLOC, nasid,
    widget, sn_irq_info, req_irq,
    req_nasid, req_slice);
 return rv.status;
}
