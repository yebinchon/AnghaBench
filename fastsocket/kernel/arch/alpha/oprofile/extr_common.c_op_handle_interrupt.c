
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_5__ {int (* reset_ctr ) (TYPE_1__*,unsigned long) ;int (* handle_interrupt ) (unsigned long,struct pt_regs*,int ) ;} ;
struct TYPE_4__ {unsigned long need_reset; } ;


 int ctr ;
 TYPE_3__* model ;
 TYPE_1__ reg ;
 int stub1 (unsigned long,struct pt_regs*,int ) ;
 int stub2 (TYPE_1__*,unsigned long) ;

__attribute__((used)) static void
op_handle_interrupt(unsigned long which, struct pt_regs *regs)
{
 model->handle_interrupt(which, regs, ctr);





 if ((reg.need_reset >> which) & 1)
  model->reset_ctr(&reg, which);
}
