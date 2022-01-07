
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fcoe_port {struct bnx2fc_interface* priv; } ;
typedef void fcoe_ctlr ;
struct fc_seq {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_frame_header {int fh_d_id; } ;
struct fc_frame {int dummy; } ;
struct bnx2fc_interface {int dummy; } ;





 int FC_FID_FLOGI ;
 void bnx2fc_flogi_resp (struct fc_seq*,struct fc_frame*,void*) ;
 void bnx2fc_logo_resp (struct fc_seq*,struct fc_frame*,void*) ;
 void* bnx2fc_to_ctlr (struct bnx2fc_interface*) ;
 struct fc_seq* fc_elsct_send (struct fc_lport*,int ,struct fc_frame*,unsigned int,void (*) (struct fc_seq*,struct fc_frame*,void*),void*,int ) ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 struct fcoe_port* lport_priv (struct fc_lport*) ;
 int ntoh24 (int ) ;

struct fc_seq *bnx2fc_elsct_send(struct fc_lport *lport, u32 did,
          struct fc_frame *fp, unsigned int op,
          void (*resp)(struct fc_seq *,
         struct fc_frame *,
         void *),
          void *arg, u32 timeout)
{
 struct fcoe_port *port = lport_priv(lport);
 struct bnx2fc_interface *interface = port->priv;
 struct fcoe_ctlr *fip = bnx2fc_to_ctlr(interface);
 struct fc_frame_header *fh = fc_frame_header_get(fp);

 switch (op) {
 case 129:
 case 130:
  return fc_elsct_send(lport, did, fp, op, bnx2fc_flogi_resp,
         fip, timeout);
 case 128:

  if (ntoh24(fh->fh_d_id) != FC_FID_FLOGI)
   break;
  return fc_elsct_send(lport, did, fp, op, bnx2fc_logo_resp,
         fip, timeout);
 }
 return fc_elsct_send(lport, did, fp, op, resp, arg, timeout);
}
