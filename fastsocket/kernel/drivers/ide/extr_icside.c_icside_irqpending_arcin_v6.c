
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icside_state {scalar_t__ irq_port; } ;
struct expansion_card {struct icside_state* irq_data; } ;


 scalar_t__ ICS_ARCIN_V6_INTRSTAT_1 ;
 scalar_t__ ICS_ARCIN_V6_INTRSTAT_2 ;
 int readb (scalar_t__) ;

__attribute__((used)) static int icside_irqpending_arcin_v6(struct expansion_card *ec)
{
 struct icside_state *state = ec->irq_data;

 return readb(state->irq_port + ICS_ARCIN_V6_INTRSTAT_1) & 1 ||
        readb(state->irq_port + ICS_ARCIN_V6_INTRSTAT_2) & 1;
}
