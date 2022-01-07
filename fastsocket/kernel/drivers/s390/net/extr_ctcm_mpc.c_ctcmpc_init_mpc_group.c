
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct xid2 {int xid2_adj_id; int xid2_sender_id; } ;
struct th_header {int dummy; } ;
struct mpc_group {struct xid2* xid; int * saved_xid2; TYPE_1__* rcvd_xid_skb; struct th_header* rcvd_xid_th; scalar_t__ rcvd_xid_data; TYPE_1__* xid_skb; int * fsm; scalar_t__ xid_id; struct th_header* xid_th; scalar_t__ xid_skb_data; int timer; } ;
struct ctcm_priv {struct mpc_group* mpcg; struct xid2* xid; } ;
struct TYPE_4__ {scalar_t__ data; } ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,struct ctcm_priv*) ;
 int CTCM_FUNTAIL ;
 int CTC_DBF_INFO ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int MPCG_NR_EVENTS ;
 int MPCG_NR_STATES ;
 int MPCG_STATE_RESET ;
 int MPC_BUFSIZE_DEFAULT ;
 int MPC_SETUP ;
 int TH_HEADER_LENGTH ;
 int XID2_LENGTH ;
 void* __dev_alloc_skb (int ,int) ;
 int dev_kfree_skb (TYPE_1__*) ;
 int fsm_newstate (int *,int ) ;
 int fsm_settimer (int *,int *) ;
 int * init_fsm (char*,int ,int ,int ,int ,int ,int ,int ) ;
 char init_xid ;
 int jiffies ;
 int kfree (struct mpc_group*) ;
 int kfree_fsm (int *) ;
 struct mpc_group* kzalloc (int,int ) ;
 int memcpy (int ,char*,int) ;
 int mpcg_event_names ;
 int mpcg_fsm ;
 int mpcg_fsm_len ;
 int mpcg_state_names ;
 int skb_put (TYPE_1__*,int) ;
 scalar_t__ skb_tail_pointer (TYPE_1__*) ;
 char thnorm ;

struct mpc_group *ctcmpc_init_mpc_group(struct ctcm_priv *priv)
{
 struct mpc_group *grp;

 CTCM_DBF_TEXT_(MPC_SETUP, CTC_DBF_INFO,
   "Enter %s(%p)", CTCM_FUNTAIL, priv);

 grp = kzalloc(sizeof(struct mpc_group), GFP_KERNEL);
 if (grp == ((void*)0))
  return ((void*)0);

 grp->fsm = init_fsm("mpcg", mpcg_state_names, mpcg_event_names,
   MPCG_NR_STATES, MPCG_NR_EVENTS, mpcg_fsm,
   mpcg_fsm_len, GFP_KERNEL);
 if (grp->fsm == ((void*)0)) {
  kfree(grp);
  return ((void*)0);
 }

 fsm_newstate(grp->fsm, MPCG_STATE_RESET);
 fsm_settimer(grp->fsm, &grp->timer);

 grp->xid_skb =
   __dev_alloc_skb(MPC_BUFSIZE_DEFAULT, GFP_ATOMIC | GFP_DMA);
 if (grp->xid_skb == ((void*)0)) {
  kfree_fsm(grp->fsm);
  kfree(grp);
  return ((void*)0);
 }

 grp->xid_skb_data = grp->xid_skb->data;
 grp->xid_th = (struct th_header *)grp->xid_skb->data;
 memcpy(skb_put(grp->xid_skb, TH_HEADER_LENGTH),
   &thnorm, TH_HEADER_LENGTH);

 grp->xid = (struct xid2 *)skb_tail_pointer(grp->xid_skb);
 memcpy(skb_put(grp->xid_skb, XID2_LENGTH), &init_xid, XID2_LENGTH);
 grp->xid->xid2_adj_id = jiffies | 0xfff00000;
 grp->xid->xid2_sender_id = jiffies;

 grp->xid_id = skb_tail_pointer(grp->xid_skb);
 memcpy(skb_put(grp->xid_skb, 4), "VTAM", 4);

 grp->rcvd_xid_skb =
  __dev_alloc_skb(MPC_BUFSIZE_DEFAULT, GFP_ATOMIC|GFP_DMA);
 if (grp->rcvd_xid_skb == ((void*)0)) {
  kfree_fsm(grp->fsm);
  dev_kfree_skb(grp->xid_skb);
  kfree(grp);
  return ((void*)0);
 }
 grp->rcvd_xid_data = grp->rcvd_xid_skb->data;
 grp->rcvd_xid_th = (struct th_header *)grp->rcvd_xid_skb->data;
 memcpy(skb_put(grp->rcvd_xid_skb, TH_HEADER_LENGTH),
   &thnorm, TH_HEADER_LENGTH);
 grp->saved_xid2 = ((void*)0);
 priv->xid = grp->xid;
 priv->mpcg = grp;
 return grp;
}
