
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_sfp_s {int (* state_query_cbfn ) (int ,int ) ;scalar_t__ state_query_lock; scalar_t__ portspeed; int status; int state_query_cbarg; int * media; } ;


 scalar_t__ BFA_PORT_SPEED_UNKNOWN ;
 int bfa_sfp_media_get (struct bfa_sfp_s*) ;
 int bfa_sfp_speed_valid (struct bfa_sfp_s*,scalar_t__) ;
 int bfa_trc (struct bfa_sfp_s*,scalar_t__) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void
bfa_cb_sfp_state_query(struct bfa_sfp_s *sfp)
{
 bfa_trc(sfp, sfp->portspeed);
 if (sfp->media) {
  bfa_sfp_media_get(sfp);
  if (sfp->state_query_cbfn)
   sfp->state_query_cbfn(sfp->state_query_cbarg,
     sfp->status);
   sfp->media = ((void*)0);
  }

  if (sfp->portspeed) {
   sfp->status = bfa_sfp_speed_valid(sfp, sfp->portspeed);
   if (sfp->state_query_cbfn)
    sfp->state_query_cbfn(sfp->state_query_cbarg,
      sfp->status);
    sfp->portspeed = BFA_PORT_SPEED_UNKNOWN;
  }

  sfp->state_query_lock = 0;
  sfp->state_query_cbfn = ((void*)0);
}
