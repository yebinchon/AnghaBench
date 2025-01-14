
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port_id; } ;
struct fc_rport_priv {TYPE_1__ ids; } ;
struct fc_frame_header {scalar_t__ fh_r_ctl; scalar_t__ fh_type; int fh_ox_id; } ;
struct fc_frame {int dummy; } ;
struct bnx2fc_rport {struct fc_rport_priv* rdata; } ;


 int BNX2FC_TGT_DBG (struct bnx2fc_rport*,char*,...) ;



 int ENODEV ;
 int ENOMEM ;
 scalar_t__ FC_RCTL_BA_ABTS ;
 scalar_t__ FC_RCTL_ELS_REQ ;
 scalar_t__ FC_TYPE_BLS ;
 scalar_t__ FC_TYPE_ELS ;
 int bnx2fc_send_adisc (struct bnx2fc_rport*,struct fc_frame*) ;
 int bnx2fc_send_logo (struct bnx2fc_rport*,struct fc_frame*) ;
 int bnx2fc_send_rls (struct bnx2fc_rport*,struct fc_frame*) ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 int fc_frame_payload_op (struct fc_frame*) ;
 int ntohs (int ) ;

__attribute__((used)) static int bnx2fc_xmit_l2_frame(struct bnx2fc_rport *tgt,
        struct fc_frame *fp)
{
 struct fc_rport_priv *rdata = tgt->rdata;
 struct fc_frame_header *fh;
 int rc = 0;

 fh = fc_frame_header_get(fp);
 BNX2FC_TGT_DBG(tgt, "Xmit L2 frame rport = 0x%x, oxid = 0x%x, "
   "r_ctl = 0x%x\n", rdata->ids.port_id,
   ntohs(fh->fh_ox_id), fh->fh_r_ctl);
 if ((fh->fh_type == FC_TYPE_ELS) &&
     (fh->fh_r_ctl == FC_RCTL_ELS_REQ)) {

  switch (fc_frame_payload_op(fp)) {
  case 130:
   rc = bnx2fc_send_adisc(tgt, fp);
   break;
  case 129:
   rc = bnx2fc_send_logo(tgt, fp);
   break;
  case 128:
   rc = bnx2fc_send_rls(tgt, fp);
   break;
  default:
   break;
  }
 } else if ((fh->fh_type == FC_TYPE_BLS) &&
     (fh->fh_r_ctl == FC_RCTL_BA_ABTS))
  BNX2FC_TGT_DBG(tgt, "ABTS frame\n");
 else {
  BNX2FC_TGT_DBG(tgt, "Send L2 frame type 0x%x "
    "rctl 0x%x thru non-offload path\n",
    fh->fh_type, fh->fh_r_ctl);
  return -ENODEV;
 }
 if (rc)
  return -ENOMEM;
 else
  return 0;
}
