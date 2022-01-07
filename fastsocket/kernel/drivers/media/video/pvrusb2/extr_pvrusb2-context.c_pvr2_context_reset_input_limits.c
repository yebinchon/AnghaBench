
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int dummy; } ;
struct pvr2_context {struct pvr2_channel* mc_first; struct pvr2_hdw* hdw; } ;
struct pvr2_channel {unsigned int input_mask; struct pvr2_channel* mc_next; } ;


 int pvr2_hdw_commit_ctl (struct pvr2_hdw*) ;
 unsigned int pvr2_hdw_get_input_available (struct pvr2_hdw*) ;
 int pvr2_hdw_set_input_allowed (struct pvr2_hdw*,unsigned int,unsigned int) ;

__attribute__((used)) static void pvr2_context_reset_input_limits(struct pvr2_context *mp)
{
 unsigned int tmsk,mmsk;
 struct pvr2_channel *cp;
 struct pvr2_hdw *hdw = mp->hdw;
 mmsk = pvr2_hdw_get_input_available(hdw);
 tmsk = mmsk;
 for (cp = mp->mc_first; cp; cp = cp->mc_next) {
  if (!cp->input_mask) continue;
  tmsk &= cp->input_mask;
 }
 pvr2_hdw_set_input_allowed(hdw,mmsk,tmsk);
 pvr2_hdw_commit_ctl(hdw);
}
