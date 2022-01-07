
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ml_effect_state {unsigned long play_at; int flags; } ;
struct ml_device {int timer; struct ml_effect_state* states; } ;


 int FF_EFFECT_PLAYING ;
 int FF_EFFECT_STARTED ;
 int FF_MEMLESS_EFFECTS ;
 unsigned long calculate_next_time (struct ml_effect_state*) ;
 int debug (char*) ;
 int del_timer (int *) ;
 unsigned long jiffies ;
 int mod_timer (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 scalar_t__ time_before_eq (unsigned long,unsigned long) ;

__attribute__((used)) static void ml_schedule_timer(struct ml_device *ml)
{
 struct ml_effect_state *state;
 unsigned long now = jiffies;
 unsigned long earliest = 0;
 unsigned long next_at;
 int events = 0;
 int i;

 debug("calculating next timer");

 for (i = 0; i < FF_MEMLESS_EFFECTS; i++) {

  state = &ml->states[i];

  if (!test_bit(FF_EFFECT_STARTED, &state->flags))
   continue;

  if (test_bit(FF_EFFECT_PLAYING, &state->flags))
   next_at = calculate_next_time(state);
  else
   next_at = state->play_at;

  if (time_before_eq(now, next_at) &&
      (++events == 1 || time_before(next_at, earliest)))
   earliest = next_at;
 }

 if (!events) {
  debug("no actions");
  del_timer(&ml->timer);
 } else {
  debug("timer set");
  mod_timer(&ml->timer, earliest);
 }
}
