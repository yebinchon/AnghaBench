
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct fc_lport {int host; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {scalar_t__ oxid; scalar_t__ rxid; scalar_t__ sid; int esb_stat; int ex_lock; int ex_refcnt; int timeout_work; } ;
struct fc_els_rrq {int rrq_rx_id; int rrq_ox_id; int rrq_s_id; } ;
typedef enum fc_els_rjt_explan { ____Placeholder_fc_els_rjt_explan } fc_els_rjt_explan ;


 int ELS_EXPL_INV_LEN ;
 int ELS_EXPL_OXID_RXID ;
 int ELS_EXPL_SID ;
 int ELS_RJT_LOGIC ;
 int ESB_ST_COMPLETE ;
 int ESB_ST_REC_QUAL ;
 scalar_t__ FC_XID_UNKNOWN ;
 int atomic_dec (int *) ;
 scalar_t__ cancel_delayed_work (int *) ;
 struct fc_exch* fc_exch_lookup (struct fc_lport*,scalar_t__) ;
 int fc_exch_release (struct fc_exch*) ;
 struct fc_els_rrq* fc_frame_payload_get (struct fc_frame*,int) ;
 scalar_t__ fc_host_port_id (int ) ;
 int fc_seq_ls_acc (struct fc_frame*) ;
 int fc_seq_ls_rjt (struct fc_frame*,int ,int) ;
 struct fc_lport* fr_dev (struct fc_frame*) ;
 scalar_t__ ntoh24 (int ) ;
 scalar_t__ ntohs (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void fc_exch_els_rrq(struct fc_frame *fp)
{
 struct fc_lport *lport;
 struct fc_exch *ep = ((void*)0);
 struct fc_els_rrq *rp;
 u32 sid;
 u16 xid;
 enum fc_els_rjt_explan explan;

 lport = fr_dev(fp);
 rp = fc_frame_payload_get(fp, sizeof(*rp));
 explan = ELS_EXPL_INV_LEN;
 if (!rp)
  goto reject;




 sid = ntoh24(rp->rrq_s_id);
 xid = fc_host_port_id(lport->host) == sid ?
   ntohs(rp->rrq_ox_id) : ntohs(rp->rrq_rx_id);
 ep = fc_exch_lookup(lport, xid);
 explan = ELS_EXPL_OXID_RXID;
 if (!ep)
  goto reject;
 spin_lock_bh(&ep->ex_lock);
 if (ep->oxid != ntohs(rp->rrq_ox_id))
  goto unlock_reject;
 if (ep->rxid != ntohs(rp->rrq_rx_id) &&
     ep->rxid != FC_XID_UNKNOWN)
  goto unlock_reject;
 explan = ELS_EXPL_SID;
 if (ep->sid != sid)
  goto unlock_reject;




 if (ep->esb_stat & ESB_ST_REC_QUAL) {
  ep->esb_stat &= ~ESB_ST_REC_QUAL;
  atomic_dec(&ep->ex_refcnt);
 }
 if (ep->esb_stat & ESB_ST_COMPLETE) {
  if (cancel_delayed_work(&ep->timeout_work))
   atomic_dec(&ep->ex_refcnt);
 }

 spin_unlock_bh(&ep->ex_lock);




 fc_seq_ls_acc(fp);
 goto out;

unlock_reject:
 spin_unlock_bh(&ep->ex_lock);
reject:
 fc_seq_ls_rjt(fp, ELS_RJT_LOGIC, explan);
out:
 if (ep)
  fc_exch_release(ep);
}
