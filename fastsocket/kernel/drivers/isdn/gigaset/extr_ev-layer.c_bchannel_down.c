
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bc_state {int chstate; } ;


 int CHS_B_UP ;
 int CHS_D_UP ;
 int CHS_NOTIFY_LL ;
 int ISDN_STAT_BHUP ;
 int ISDN_STAT_DHUP ;
 int gigaset_bcs_reinit (struct bc_state*) ;
 int gigaset_free_channel (struct bc_state*) ;
 int gigaset_i4l_channel_cmd (struct bc_state*,int ) ;

__attribute__((used)) static void bchannel_down(struct bc_state *bcs)
{
 if (bcs->chstate & CHS_B_UP) {
  bcs->chstate &= ~CHS_B_UP;
  gigaset_i4l_channel_cmd(bcs, ISDN_STAT_BHUP);
 }

 if (bcs->chstate & (CHS_D_UP | CHS_NOTIFY_LL)) {
  bcs->chstate &= ~(CHS_D_UP | CHS_NOTIFY_LL);
  gigaset_i4l_channel_cmd(bcs, ISDN_STAT_DHUP);
 }

 gigaset_free_channel(bcs);

 gigaset_bcs_reinit(bcs);
}
