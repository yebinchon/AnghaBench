
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* elsct_send ) (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_lport*,int) ;} ;
struct fc_lport {int r_a_tov; TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_els_logo {int dummy; } ;


 int ELS_LOGO ;
 int FC_FID_FLOGI ;
 int FC_LPORT_DBG (struct fc_lport*,char*,int ) ;
 int LPORT_ST_LOGO ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 int fc_lport_error (struct fc_lport*,struct fc_frame*) ;
 int fc_lport_logo_resp ;
 int fc_lport_state (struct fc_lport*) ;
 int fc_lport_state_enter (struct fc_lport*,int ) ;
 int fc_vports_linkchange (struct fc_lport*) ;
 int stub1 (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_lport*,int) ;

__attribute__((used)) static void fc_lport_enter_logo(struct fc_lport *lport)
{
 struct fc_frame *fp;
 struct fc_els_logo *logo;

 FC_LPORT_DBG(lport, "Entered LOGO state from %s state\n",
       fc_lport_state(lport));

 fc_lport_state_enter(lport, LPORT_ST_LOGO);
 fc_vports_linkchange(lport);

 fp = fc_frame_alloc(lport, sizeof(*logo));
 if (!fp) {
  fc_lport_error(lport, fp);
  return;
 }

 if (!lport->tt.elsct_send(lport, FC_FID_FLOGI, fp, ELS_LOGO,
      fc_lport_logo_resp, lport,
      2 * lport->r_a_tov))
  fc_lport_error(lport, ((void*)0));
}
