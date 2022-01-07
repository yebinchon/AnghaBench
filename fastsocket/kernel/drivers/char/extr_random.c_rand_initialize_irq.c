
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_rand_state {int dummy; } ;


 int GFP_KERNEL ;
 struct timer_rand_state* get_timer_rand_state (int) ;
 struct timer_rand_state* kzalloc (int,int ) ;
 int set_timer_rand_state (int,struct timer_rand_state*) ;

void rand_initialize_irq(int irq)
{
 struct timer_rand_state *state;

 state = get_timer_rand_state(irq);

 if (state)
  return;





 state = kzalloc(sizeof(struct timer_rand_state), GFP_KERNEL);
 if (state)
  set_timer_rand_state(irq, state);
}
