
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sn_irq_info {scalar_t__ irq_cookie; scalar_t__ irq_irq; } ;
struct ia64_sal_retval {scalar_t__ v0; scalar_t__ status; } ;
typedef scalar_t__ nasid_t ;


 int SAL_CALL_NOLOCK (struct ia64_sal_retval,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ SAL_INTR_FREE ;
 scalar_t__ SN_SAL_IOIF_INTERRUPT ;

void sn_intr_free(nasid_t local_nasid, int local_widget,
    struct sn_irq_info *sn_irq_info)
{
 struct ia64_sal_retval ret_stuff;
 ret_stuff.status = 0;
 ret_stuff.v0 = 0;

 SAL_CALL_NOLOCK(ret_stuff, (u64) SN_SAL_IOIF_INTERRUPT,
   (u64) SAL_INTR_FREE, (u64) local_nasid,
   (u64) local_widget, (u64) sn_irq_info->irq_irq,
   (u64) sn_irq_info->irq_cookie, 0, 0);
}
