
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_MAC_ADB ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int macii_interrupt (int ,int *) ;

__attribute__((used)) static void macii_poll(void)
{
 disable_irq(IRQ_MAC_ADB);
 macii_interrupt(0, ((void*)0));
 enable_irq(IRQ_MAC_ADB);
}
