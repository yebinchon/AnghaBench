
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fc_lport {scalar_t__ state; } ;
struct fc_frame_header {int fh_type; int fh_rx_id; int fh_ox_id; int fh_f_ctl; } ;
struct fc_frame {int dummy; } ;
struct fc_exch_mgr_anchor {int mp; } ;




 int FC_FC_END_SEQ ;
 int FC_FC_EX_CTX ;
 scalar_t__ FC_FC_FILL (int) ;
 int FC_FC_SEQ_CTX ;
 int FC_LPORT_DBG (struct fc_lport*,char*,...) ;
 int FC_TYPE_BLS ;
 scalar_t__ LPORT_ST_DISABLED ;
 int fc_exch_recv_bls (int ,struct fc_frame*) ;
 int fc_exch_recv_req (struct fc_lport*,int ,struct fc_frame*) ;
 int fc_exch_recv_resp (int ,struct fc_frame*) ;
 int fc_exch_recv_seq_resp (int ,struct fc_frame*) ;
 struct fc_exch_mgr_anchor* fc_find_ema (int,struct fc_lport*,struct fc_frame_header*) ;
 int fc_frame_free (struct fc_frame*) ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 int fp_skb (struct fc_frame*) ;
 int fr_eof (struct fc_frame*) ;
 scalar_t__ fr_len (struct fc_frame*) ;
 int ntoh24 (int ) ;
 int ntohs (int ) ;
 int skb_trim (int ,scalar_t__) ;

void fc_exch_recv(struct fc_lport *lport, struct fc_frame *fp)
{
 struct fc_frame_header *fh = fc_frame_header_get(fp);
 struct fc_exch_mgr_anchor *ema;
 u32 f_ctl;


 if (!lport || lport->state == LPORT_ST_DISABLED) {
  FC_LPORT_DBG(lport, "Receiving frames for an lport that "
        "has not been initialized correctly\n");
  fc_frame_free(fp);
  return;
 }

 f_ctl = ntoh24(fh->fh_f_ctl);
 ema = fc_find_ema(f_ctl, lport, fh);
 if (!ema) {
  FC_LPORT_DBG(lport, "Unable to find Exchange Manager Anchor,"
        "fc_ctl <0x%x>, xid <0x%x>\n",
         f_ctl,
         (f_ctl & FC_FC_EX_CTX) ?
         ntohs(fh->fh_ox_id) :
         ntohs(fh->fh_rx_id));
  fc_frame_free(fp);
  return;
 }




 switch (fr_eof(fp)) {
 case 128:
  if (f_ctl & FC_FC_END_SEQ)
   skb_trim(fp_skb(fp), fr_len(fp) - FC_FC_FILL(f_ctl));

 case 129:
  if (fh->fh_type == FC_TYPE_BLS)
   fc_exch_recv_bls(ema->mp, fp);
  else if ((f_ctl & (FC_FC_EX_CTX | FC_FC_SEQ_CTX)) ==
    FC_FC_EX_CTX)
   fc_exch_recv_seq_resp(ema->mp, fp);
  else if (f_ctl & FC_FC_SEQ_CTX)
   fc_exch_recv_resp(ema->mp, fp);
  else
   fc_exch_recv_req(lport, ema->mp, fp);
  break;
 default:
  FC_LPORT_DBG(lport, "dropping invalid frame (eof %x)",
        fr_eof(fp));
  fc_frame_free(fp);
 }
}
