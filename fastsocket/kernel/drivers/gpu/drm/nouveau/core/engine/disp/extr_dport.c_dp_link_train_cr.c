
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dp_state {int* conf; int link_nr; int* stat; } ;


 int DPCD_LC03_MAX_SWING_REACHED ;
 int DPCD_LC03_VOLTAGE_SWING_SET ;
 int DPCD_LS02_LANE0_CR_DONE ;
 scalar_t__ dp_link_train_commit (struct dp_state*) ;
 scalar_t__ dp_link_train_update (struct dp_state*,int) ;
 int dp_set_training_pattern (struct dp_state*,int) ;

__attribute__((used)) static int
dp_link_train_cr(struct dp_state *dp)
{
 bool cr_done = 0, abort = 0;
 int voltage = dp->conf[0] & DPCD_LC03_VOLTAGE_SWING_SET;
 int tries = 0, i;

 dp_set_training_pattern(dp, 1);

 do {
  if (dp_link_train_commit(dp) ||
      dp_link_train_update(dp, 100))
   break;

  cr_done = 1;
  for (i = 0; i < dp->link_nr; i++) {
   u8 lane = (dp->stat[i >> 1] >> ((i & 1) * 4)) & 0xf;
   if (!(lane & DPCD_LS02_LANE0_CR_DONE)) {
    cr_done = 0;
    if (dp->conf[i] & DPCD_LC03_MAX_SWING_REACHED)
     abort = 1;
    break;
   }
  }

  if ((dp->conf[0] & DPCD_LC03_VOLTAGE_SWING_SET) != voltage) {
   voltage = dp->conf[0] & DPCD_LC03_VOLTAGE_SWING_SET;
   tries = 0;
  }
 } while (!cr_done && !abort && ++tries < 5);

 return cr_done ? 0 : -1;
}
