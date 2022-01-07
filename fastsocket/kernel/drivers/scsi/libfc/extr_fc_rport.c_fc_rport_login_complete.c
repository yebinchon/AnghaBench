
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct fc_rport_priv {unsigned int e_d_tov; int maxframe_size; struct fc_lport* local_port; } ;
struct fc_lport {int mfs; } ;
struct fc_frame {int dummy; } ;
struct TYPE_2__ {int sp_e_d_tov; int sp_features; } ;
struct fc_els_flogi {TYPE_1__ fl_csp; } ;


 int EINVAL ;
 scalar_t__ ELS_FLOGI ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*) ;
 int FC_SP_FT_EDTR ;
 int FC_SP_FT_FPORT ;
 struct fc_els_flogi* fc_frame_payload_get (struct fc_frame*,int) ;
 scalar_t__ fc_frame_payload_op (struct fc_frame*) ;
 int fc_plogi_get_maxframe (struct fc_els_flogi*,int ) ;
 unsigned int ntohl (int ) ;
 int ntohs (int ) ;

__attribute__((used)) static int fc_rport_login_complete(struct fc_rport_priv *rdata,
       struct fc_frame *fp)
{
 struct fc_lport *lport = rdata->local_port;
 struct fc_els_flogi *flogi;
 unsigned int e_d_tov;
 u16 csp_flags;

 flogi = fc_frame_payload_get(fp, sizeof(*flogi));
 if (!flogi)
  return -EINVAL;

 csp_flags = ntohs(flogi->fl_csp.sp_features);

 if (fc_frame_payload_op(fp) == ELS_FLOGI) {
  if (csp_flags & FC_SP_FT_FPORT) {
   FC_RPORT_DBG(rdata, "Fabric bit set in FLOGI\n");
   return -EINVAL;
  }
 } else {




  e_d_tov = ntohl(flogi->fl_csp.sp_e_d_tov);
  if (csp_flags & FC_SP_FT_EDTR)
   e_d_tov /= 1000000;
  if (e_d_tov > rdata->e_d_tov)
   rdata->e_d_tov = e_d_tov;
 }
 rdata->maxframe_size = fc_plogi_get_maxframe(flogi, lport->mfs);
 return 0;
}
