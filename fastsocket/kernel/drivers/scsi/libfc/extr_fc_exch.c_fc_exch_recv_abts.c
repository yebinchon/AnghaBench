
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int ssb_stat; int cnt; int id; } ;
struct fc_frame_header {void* fh_seq_cnt; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {int esb_stat; int ex_lock; struct fc_seq seq; int lp; int r_a_tov; } ;
struct fc_ba_acc {void* ba_low_seq_cnt; void* ba_high_seq_cnt; int ba_seq_id_val; int ba_seq_id; } ;


 int ESB_ST_ABNORMAL ;
 int ESB_ST_COMPLETE ;
 int ESB_ST_REC_QUAL ;
 int FC_BA_RJT_INV_XID ;
 int FC_BA_RJT_UNABLE ;
 int FC_BA_SEQ_ID_VAL ;
 int FC_RCTL_BA_ACC ;
 int FC_TYPE_BLS ;
 int SSB_ST_RESP ;
 int fc_exch_hold (struct fc_exch*) ;
 int fc_exch_send_ba_rjt (struct fc_frame*,int ,int ) ;
 int fc_exch_timer_set_locked (struct fc_exch*,int ) ;
 struct fc_frame* fc_frame_alloc (int ,int) ;
 int fc_frame_free (struct fc_frame*) ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 struct fc_ba_acc* fc_frame_payload_get (struct fc_frame*,int) ;
 int fc_seq_send_last (struct fc_seq*,struct fc_frame*,int ,int ) ;
 struct fc_seq* fc_seq_start_next_locked (struct fc_seq*) ;
 void* htons (int) ;
 int memset (struct fc_ba_acc*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void fc_exch_recv_abts(struct fc_exch *ep, struct fc_frame *rx_fp)
{
 struct fc_frame *fp;
 struct fc_ba_acc *ap;
 struct fc_frame_header *fh;
 struct fc_seq *sp;

 if (!ep)
  goto reject;
 spin_lock_bh(&ep->ex_lock);
 if (ep->esb_stat & ESB_ST_COMPLETE) {
  spin_unlock_bh(&ep->ex_lock);
  goto reject;
 }
 if (!(ep->esb_stat & ESB_ST_REC_QUAL))
  fc_exch_hold(ep);
 ep->esb_stat |= ESB_ST_ABNORMAL | ESB_ST_REC_QUAL;
 fc_exch_timer_set_locked(ep, ep->r_a_tov);

 fp = fc_frame_alloc(ep->lp, sizeof(*ap));
 if (!fp) {
  spin_unlock_bh(&ep->ex_lock);
  goto free;
 }
 fh = fc_frame_header_get(fp);
 ap = fc_frame_payload_get(fp, sizeof(*ap));
 memset(ap, 0, sizeof(*ap));
 sp = &ep->seq;
 ap->ba_high_seq_cnt = htons(0xffff);
 if (sp->ssb_stat & SSB_ST_RESP) {
  ap->ba_seq_id = sp->id;
  ap->ba_seq_id_val = FC_BA_SEQ_ID_VAL;
  ap->ba_high_seq_cnt = fh->fh_seq_cnt;
  ap->ba_low_seq_cnt = htons(sp->cnt);
 }
 sp = fc_seq_start_next_locked(sp);
 fc_seq_send_last(sp, fp, FC_RCTL_BA_ACC, FC_TYPE_BLS);
 spin_unlock_bh(&ep->ex_lock);
 fc_frame_free(rx_fp);
 return;

reject:
 fc_exch_send_ba_rjt(rx_fp, FC_BA_RJT_UNABLE, FC_BA_RJT_INV_XID);
free:
 fc_frame_free(rx_fp);
}
