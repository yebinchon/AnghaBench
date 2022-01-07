
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {int raw; } ;
struct TYPE_6__ {TYPE_1__ mgid; } ;
struct ipoib_mcast {int backoff; int mc; int flags; TYPE_2__ mcmember; } ;
struct ipoib_dev_priv {int mcast_task; int flags; int port; int ca; TYPE_4__* broadcast; int pkey; int local_gid; } ;
struct ib_sa_mcmember_rec {int join_state; int hop_limit; int flow_label; int sl; int rate; void* rate_selector; int traffic_class; int mtu; void* mtu_selector; int qkey; int pkey; int port_gid; TYPE_1__ mgid; } ;
typedef int ib_sa_comp_mask ;
struct TYPE_7__ {int hop_limit; int flow_label; int sl; int rate; int traffic_class; int mtu; int qkey; } ;
struct TYPE_8__ {TYPE_3__ mcmember; } ;


 int GFP_KERNEL ;
 int HZ ;
 void* IB_SA_EQ ;
 int IB_SA_MCMEMBER_REC_FLOW_LABEL ;
 int IB_SA_MCMEMBER_REC_HOP_LIMIT ;
 int IB_SA_MCMEMBER_REC_JOIN_STATE ;
 int IB_SA_MCMEMBER_REC_MGID ;
 int IB_SA_MCMEMBER_REC_MTU ;
 int IB_SA_MCMEMBER_REC_MTU_SELECTOR ;
 int IB_SA_MCMEMBER_REC_PKEY ;
 int IB_SA_MCMEMBER_REC_PORT_GID ;
 int IB_SA_MCMEMBER_REC_QKEY ;
 int IB_SA_MCMEMBER_REC_RATE ;
 int IB_SA_MCMEMBER_REC_RATE_SELECTOR ;
 int IB_SA_MCMEMBER_REC_SL ;
 int IB_SA_MCMEMBER_REC_TRAFFIC_CLASS ;
 int IPOIB_MAX_BACKOFF_SECONDS ;
 int IPOIB_MCAST_FLAG_BUSY ;
 int IPOIB_MCAST_RUN ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clear_bit (int ,int *) ;
 int cpu_to_be16 (int ) ;
 int ib_sa_join_multicast (int *,int ,int ,struct ib_sa_mcmember_rec*,int,int ,int ,struct ipoib_mcast*) ;
 int ipoib_dbg_mcast (struct ipoib_dev_priv*,char*,int ) ;
 int ipoib_mcast_join_complete ;
 int ipoib_sa_client ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int) ;
 int ipoib_workqueue ;
 int mcast_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int queue_delayed_work (int ,int *,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ipoib_mcast_join(struct net_device *dev, struct ipoib_mcast *mcast,
        int create)
{
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 struct ib_sa_mcmember_rec rec = {
  .join_state = 1
 };
 ib_sa_comp_mask comp_mask;
 int ret = 0;

 ipoib_dbg_mcast(priv, "joining MGID %pI6\n", mcast->mcmember.mgid.raw);

 rec.mgid = mcast->mcmember.mgid;
 rec.port_gid = priv->local_gid;
 rec.pkey = cpu_to_be16(priv->pkey);

 comp_mask =
  IB_SA_MCMEMBER_REC_MGID |
  IB_SA_MCMEMBER_REC_PORT_GID |
  IB_SA_MCMEMBER_REC_PKEY |
  IB_SA_MCMEMBER_REC_JOIN_STATE;

 if (create) {
  comp_mask |=
   IB_SA_MCMEMBER_REC_QKEY |
   IB_SA_MCMEMBER_REC_MTU_SELECTOR |
   IB_SA_MCMEMBER_REC_MTU |
   IB_SA_MCMEMBER_REC_TRAFFIC_CLASS |
   IB_SA_MCMEMBER_REC_RATE_SELECTOR |
   IB_SA_MCMEMBER_REC_RATE |
   IB_SA_MCMEMBER_REC_SL |
   IB_SA_MCMEMBER_REC_FLOW_LABEL |
   IB_SA_MCMEMBER_REC_HOP_LIMIT;

  rec.qkey = priv->broadcast->mcmember.qkey;
  rec.mtu_selector = IB_SA_EQ;
  rec.mtu = priv->broadcast->mcmember.mtu;
  rec.traffic_class = priv->broadcast->mcmember.traffic_class;
  rec.rate_selector = IB_SA_EQ;
  rec.rate = priv->broadcast->mcmember.rate;
  rec.sl = priv->broadcast->mcmember.sl;
  rec.flow_label = priv->broadcast->mcmember.flow_label;
  rec.hop_limit = priv->broadcast->mcmember.hop_limit;
 }

 set_bit(IPOIB_MCAST_FLAG_BUSY, &mcast->flags);
 mcast->mc = ib_sa_join_multicast(&ipoib_sa_client, priv->ca, priv->port,
      &rec, comp_mask, GFP_KERNEL,
      ipoib_mcast_join_complete, mcast);
 if (IS_ERR(mcast->mc)) {
  clear_bit(IPOIB_MCAST_FLAG_BUSY, &mcast->flags);
  ret = PTR_ERR(mcast->mc);
  ipoib_warn(priv, "ib_sa_join_multicast failed, status %d\n", ret);

  mcast->backoff *= 2;
  if (mcast->backoff > IPOIB_MAX_BACKOFF_SECONDS)
   mcast->backoff = IPOIB_MAX_BACKOFF_SECONDS;

  mutex_lock(&mcast_mutex);
  if (test_bit(IPOIB_MCAST_RUN, &priv->flags))
   queue_delayed_work(ipoib_workqueue,
        &priv->mcast_task,
        mcast->backoff * HZ);
  mutex_unlock(&mcast_mutex);
 }
}
