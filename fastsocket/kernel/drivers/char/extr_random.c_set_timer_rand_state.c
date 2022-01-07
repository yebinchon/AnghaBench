
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_rand_state {int dummy; } ;


 struct timer_rand_state** irq_timer_state ;

__attribute__((used)) static void set_timer_rand_state(unsigned int irq,
     struct timer_rand_state *state)
{
 irq_timer_state[irq] = state;
}
