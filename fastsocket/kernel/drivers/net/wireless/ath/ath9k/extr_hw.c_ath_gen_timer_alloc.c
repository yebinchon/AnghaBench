
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ath_gen_timer_table {struct ath_gen_timer** timers; } ;
struct ath_hw {struct ath_gen_timer_table hw_gen_timers; } ;
struct ath_gen_timer {size_t index; void (* trigger ) (void*) ;void (* overflow ) (void*) ;void* arg; } ;


 int GFP_KERNEL ;
 struct ath_gen_timer* kzalloc (int,int ) ;

struct ath_gen_timer *ath_gen_timer_alloc(struct ath_hw *ah,
       void (*trigger)(void *),
       void (*overflow)(void *),
       void *arg,
       u8 timer_index)
{
 struct ath_gen_timer_table *timer_table = &ah->hw_gen_timers;
 struct ath_gen_timer *timer;

 timer = kzalloc(sizeof(struct ath_gen_timer), GFP_KERNEL);
 if (timer == ((void*)0))
  return ((void*)0);


 timer_table->timers[timer_index] = timer;
 timer->index = timer_index;
 timer->trigger = trigger;
 timer->overflow = overflow;
 timer->arg = arg;

 return timer;
}
