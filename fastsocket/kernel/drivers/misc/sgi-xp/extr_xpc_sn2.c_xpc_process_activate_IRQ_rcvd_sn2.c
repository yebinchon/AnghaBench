
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xpc_activate_IRQ_rcvd ;
 int xpc_activate_IRQ_rcvd_lock ;
 int xpc_identify_activate_IRQ_sender_sn2 () ;

__attribute__((used)) static void
xpc_process_activate_IRQ_rcvd_sn2(void)
{
 unsigned long irq_flags;
 int n_IRQs_expected;
 int n_IRQs_detected;

 spin_lock_irqsave(&xpc_activate_IRQ_rcvd_lock, irq_flags);
 n_IRQs_expected = xpc_activate_IRQ_rcvd;
 xpc_activate_IRQ_rcvd = 0;
 spin_unlock_irqrestore(&xpc_activate_IRQ_rcvd_lock, irq_flags);

 n_IRQs_detected = xpc_identify_activate_IRQ_sender_sn2();
 if (n_IRQs_detected < n_IRQs_expected) {

  (void)xpc_identify_activate_IRQ_sender_sn2();
 }
}
