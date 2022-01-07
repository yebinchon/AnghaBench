
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_rand_state {int dummy; } ;


 int DEBUG_ENT (char*,int) ;
 int add_timer_randomness (struct timer_rand_state*,int) ;
 struct timer_rand_state* get_timer_rand_state (int) ;

void add_interrupt_randomness(int irq)
{
 struct timer_rand_state *state;

 state = get_timer_rand_state(irq);

 if (state == ((void*)0))
  return;

 DEBUG_ENT("irq event %d\n", irq);
 add_timer_randomness(state, 0x100 + irq);
}
