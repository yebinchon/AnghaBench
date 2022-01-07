
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_3__ {scalar_t__ ext; } ;
typedef TYPE_1__ reg_intr_vect_r_nmi ;


 TYPE_1__ REG_RD (int ,int ,int ) ;
 int intr_vect ;
 int nmi_handler (struct pt_regs*) ;
 int r_nmi ;
 int regi_irq ;
 scalar_t__ regk_intr_vect_on ;

void handle_nmi(struct pt_regs *regs)
{




 if (nmi_handler)
  nmi_handler(regs);







}
