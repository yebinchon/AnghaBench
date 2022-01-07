
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct ctcm_priv* ml_priv; int name; } ;
struct mpc_group {int mpc_tasklet2; scalar_t__ rcvd_xid_skb; scalar_t__ xid_skb; int * fsm; } ;
struct ctcm_priv {struct mpc_group* xid; int * fsm; struct mpc_group* mpcg; } ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ) ;
 int CTCM_FUNTAIL ;
 int CTC_DBF_INFO ;
 int SETUP ;
 int dev_kfree_skb (scalar_t__) ;
 int free_netdev (struct net_device*) ;
 int kfree (struct mpc_group*) ;
 int kfree_fsm (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void ctcm_free_netdevice(struct net_device *dev)
{
 struct ctcm_priv *priv;
 struct mpc_group *grp;

 CTCM_DBF_TEXT_(SETUP, CTC_DBF_INFO,
   "%s(%s)", CTCM_FUNTAIL, dev->name);
 priv = dev->ml_priv;
 if (priv) {
  grp = priv->mpcg;
  if (grp) {
   if (grp->fsm)
    kfree_fsm(grp->fsm);
   if (grp->xid_skb)
    dev_kfree_skb(grp->xid_skb);
   if (grp->rcvd_xid_skb)
    dev_kfree_skb(grp->rcvd_xid_skb);
   tasklet_kill(&grp->mpc_tasklet2);
   kfree(grp);
   priv->mpcg = ((void*)0);
  }
  if (priv->fsm) {
   kfree_fsm(priv->fsm);
   priv->fsm = ((void*)0);
  }
  kfree(priv->xid);
  priv->xid = ((void*)0);




 }



}
