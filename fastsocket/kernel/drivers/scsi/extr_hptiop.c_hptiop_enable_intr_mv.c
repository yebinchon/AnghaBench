
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* regs; } ;
struct TYPE_6__ {TYPE_2__ mv; } ;
struct hptiop_hba {TYPE_3__ u; } ;
struct TYPE_4__ {int outbound_intmask; } ;


 int MVIOP_MU_OUTBOUND_INT_MSG ;
 int MVIOP_MU_OUTBOUND_INT_POSTQUEUE ;
 int writel (int,int *) ;

__attribute__((used)) static void hptiop_enable_intr_mv(struct hptiop_hba *hba)
{
 writel(MVIOP_MU_OUTBOUND_INT_POSTQUEUE | MVIOP_MU_OUTBOUND_INT_MSG,
  &hba->u.mv.regs->outbound_intmask);
}
