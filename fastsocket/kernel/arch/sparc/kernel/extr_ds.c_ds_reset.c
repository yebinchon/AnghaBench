
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds_info {int num_ds_states; struct ds_cap_state* ds_states; scalar_t__ hs_state; } ;
struct ds_cap_state {int state; } ;


 int CAP_STATE_UNKNOWN ;

__attribute__((used)) static void ds_reset(struct ds_info *dp)
{
 int i;

 dp->hs_state = 0;

 for (i = 0; i < dp->num_ds_states; i++) {
  struct ds_cap_state *cp = &dp->ds_states[i];

  cp->state = CAP_STATE_UNKNOWN;
 }
}
