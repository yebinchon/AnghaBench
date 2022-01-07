
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ack_local_irq (int ) ;
 int group_to_ip (int ) ;
 int irq_to_group (unsigned int) ;
 int rb532_disable_irq (unsigned int) ;

__attribute__((used)) static void rb532_mask_and_ack_irq(unsigned int irq_nr)
{
 rb532_disable_irq(irq_nr);
 ack_local_irq(group_to_ip(irq_to_group(irq_nr)));
}
