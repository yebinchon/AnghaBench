
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn_irq_info {int irq_cookie; int irq_irq; } ;
struct ia64_sal_retval {scalar_t__ v0; scalar_t__ status; } ;
typedef int nasid_t ;


 int SAL_INTR_FREE ;
 int SN_SAL_IOIF_INTERRUPT ;
 int ia64_sal_oemcall_nolock (struct ia64_sal_retval*,int ,int ,int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static inline void tiocx_intr_free(nasid_t nasid, int widget,
       struct sn_irq_info *sn_irq_info)
{
 struct ia64_sal_retval rv;
 rv.status = 0;
 rv.v0 = 0;

 ia64_sal_oemcall_nolock(&rv, SN_SAL_IOIF_INTERRUPT,
    SAL_INTR_FREE, nasid,
    widget, sn_irq_info->irq_irq,
    sn_irq_info->irq_cookie, 0, 0);
}
