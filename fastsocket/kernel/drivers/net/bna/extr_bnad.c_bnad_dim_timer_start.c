
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {int cfg_flags; int dim_timer; int run_flags; } ;


 int BNAD_CF_DIM_ENABLED ;
 int BNAD_DIM_TIMER_FREQ ;
 int BNAD_RF_DIM_TIMER_RUNNING ;
 int bnad_dim_timeout ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int set_bit (int ,int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int test_bit (int ,int *) ;

void
bnad_dim_timer_start(struct bnad *bnad)
{
 if (bnad->cfg_flags & BNAD_CF_DIM_ENABLED &&
     !test_bit(BNAD_RF_DIM_TIMER_RUNNING, &bnad->run_flags)) {
  setup_timer(&bnad->dim_timer, bnad_dim_timeout,
       (unsigned long)bnad);
  set_bit(BNAD_RF_DIM_TIMER_RUNNING, &bnad->run_flags);
  mod_timer(&bnad->dim_timer,
     jiffies + msecs_to_jiffies(BNAD_DIM_TIMER_FREQ));
 }
}
