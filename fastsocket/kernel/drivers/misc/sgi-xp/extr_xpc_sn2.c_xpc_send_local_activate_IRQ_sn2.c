
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct amo {int variable; } ;
struct TYPE_2__ {scalar_t__ amos_page_pa; } ;


 int BIT_MASK (int) ;
 size_t BIT_WORD (int) ;
 int FETCHOP_OR ;
 int FETCHOP_STORE_OP (int ,int ,int ) ;
 int TO_AMO (int ) ;
 int XPC_ACTIVATE_IRQ_AMOS_SN2 ;
 scalar_t__ __va (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;
 int xpc_activate_IRQ_rcvd ;
 int xpc_activate_IRQ_rcvd_lock ;
 int xpc_activate_IRQ_wq ;
 TYPE_1__* xpc_vars_sn2 ;

__attribute__((used)) static void
xpc_send_local_activate_IRQ_sn2(int from_nasid)
{
 unsigned long irq_flags;
 struct amo *amos = (struct amo *)__va(xpc_vars_sn2->amos_page_pa +
           (XPC_ACTIVATE_IRQ_AMOS_SN2 *
           sizeof(struct amo)));


 FETCHOP_STORE_OP(TO_AMO((u64)&amos[BIT_WORD(from_nasid / 2)].variable),
    FETCHOP_OR, BIT_MASK(from_nasid / 2));

 spin_lock_irqsave(&xpc_activate_IRQ_rcvd_lock, irq_flags);
 xpc_activate_IRQ_rcvd++;
 spin_unlock_irqrestore(&xpc_activate_IRQ_rcvd_lock, irq_flags);

 wake_up_interruptible(&xpc_activate_IRQ_wq);
}
