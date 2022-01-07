
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lguest_ro_state {int * guest_idt; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int default_idt_entry (int *,unsigned int,unsigned long const,int *) ;

void setup_default_idt_entries(struct lguest_ro_state *state,
          const unsigned long *def)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(state->guest_idt); i++)
  default_idt_entry(&state->guest_idt[i], i, def[i], ((void*)0));
}
