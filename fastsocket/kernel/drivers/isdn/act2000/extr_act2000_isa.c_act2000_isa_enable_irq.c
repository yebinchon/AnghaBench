
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int act2000_card ;


 int ISA_PORT_SIS ;
 int ISA_SIS_INT ;
 int act2000_isa_select_irq (int *) ;
 int outb (int ,int ) ;

__attribute__((used)) static void
act2000_isa_enable_irq(act2000_card * card)
{
 act2000_isa_select_irq(card);

 outb(ISA_SIS_INT, ISA_PORT_SIS);
}
