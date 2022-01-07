
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icside_state {scalar_t__ irq_port; } ;
struct expansion_card {struct icside_state* irq_data; } ;


 scalar_t__ ICS_ARCIN_V6_INTROFFSET_1 ;
 scalar_t__ ICS_ARCIN_V6_INTROFFSET_2 ;
 int readb (scalar_t__) ;

__attribute__((used)) static void icside_irqdisable_arcin_v6 (struct expansion_card *ec, int irqnr)
{
 struct icside_state *state = ec->irq_data;

 readb(state->irq_port + ICS_ARCIN_V6_INTROFFSET_1);
 readb(state->irq_port + ICS_ARCIN_V6_INTROFFSET_2);
}
