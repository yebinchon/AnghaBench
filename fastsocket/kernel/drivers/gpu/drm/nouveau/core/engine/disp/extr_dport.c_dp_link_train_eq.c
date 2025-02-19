
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dp_state {int* stat; int link_nr; } ;


 int DPCD_LS02_LANE0_CHANNEL_EQ_DONE ;
 int DPCD_LS02_LANE0_CR_DONE ;
 int DPCD_LS02_LANE0_SYMBOL_LOCKED ;
 int DPCD_LS04_INTERLANE_ALIGN_DONE ;
 scalar_t__ dp_link_train_commit (struct dp_state*) ;
 scalar_t__ dp_link_train_update (struct dp_state*,int) ;
 int dp_set_training_pattern (struct dp_state*,int) ;

__attribute__((used)) static int
dp_link_train_eq(struct dp_state *dp)
{
 bool eq_done, cr_done = 1;
 int tries = 0, i;

 dp_set_training_pattern(dp, 2);

 do {
  if (dp_link_train_update(dp, 400))
   break;

  eq_done = !!(dp->stat[2] & DPCD_LS04_INTERLANE_ALIGN_DONE);
  for (i = 0; i < dp->link_nr && eq_done; i++) {
   u8 lane = (dp->stat[i >> 1] >> ((i & 1) * 4)) & 0xf;
   if (!(lane & DPCD_LS02_LANE0_CR_DONE))
    cr_done = 0;
   if (!(lane & DPCD_LS02_LANE0_CHANNEL_EQ_DONE) ||
       !(lane & DPCD_LS02_LANE0_SYMBOL_LOCKED))
    eq_done = 0;
  }

  if (dp_link_train_commit(dp))
   break;
 } while (!eq_done && cr_done && ++tries <= 5);

 return eq_done ? 0 : -1;
}
