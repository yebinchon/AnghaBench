
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int raw; } ;
struct TYPE_4__ {TYPE_1__ mgid; } ;
struct ipoib_mcast {TYPE_2__ mcmember; int flags; int mc; struct net_device* dev; } ;
struct ipoib_dev_priv {int port; int ca; int pkey; int local_gid; int flags; } ;
struct ib_sa_mcmember_rec {int join_state; int pkey; int port_gid; TYPE_1__ mgid; } ;


 int EBUSY ;
 int ENODEV ;
 int GFP_ATOMIC ;
 int IB_SA_MCMEMBER_REC_JOIN_STATE ;
 int IB_SA_MCMEMBER_REC_MGID ;
 int IB_SA_MCMEMBER_REC_PKEY ;
 int IB_SA_MCMEMBER_REC_PORT_GID ;
 int IPOIB_FLAG_OPER_UP ;
 int IPOIB_MCAST_FLAG_BUSY ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clear_bit (int ,int *) ;
 int cpu_to_be16 (int ) ;
 int ib_sa_join_multicast (int *,int ,int ,struct ib_sa_mcmember_rec*,int,int ,int ,struct ipoib_mcast*) ;
 int ipoib_dbg_mcast (struct ipoib_dev_priv*,char*,...) ;
 int ipoib_mcast_sendonly_join_complete ;
 int ipoib_sa_client ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ipoib_mcast_sendonly_join(struct ipoib_mcast *mcast)
{
 struct net_device *dev = mcast->dev;
 struct ipoib_dev_priv *priv = netdev_priv(dev);
 struct ib_sa_mcmember_rec rec = {



  .join_state = 1

 };
 int ret = 0;

 if (!test_bit(IPOIB_FLAG_OPER_UP, &priv->flags)) {
  ipoib_dbg_mcast(priv, "device shutting down, no multicast joins\n");
  return -ENODEV;
 }

 if (test_and_set_bit(IPOIB_MCAST_FLAG_BUSY, &mcast->flags)) {
  ipoib_dbg_mcast(priv, "multicast entry busy, skipping\n");
  return -EBUSY;
 }

 rec.mgid = mcast->mcmember.mgid;
 rec.port_gid = priv->local_gid;
 rec.pkey = cpu_to_be16(priv->pkey);

 mcast->mc = ib_sa_join_multicast(&ipoib_sa_client, priv->ca,
      priv->port, &rec,
      IB_SA_MCMEMBER_REC_MGID |
      IB_SA_MCMEMBER_REC_PORT_GID |
      IB_SA_MCMEMBER_REC_PKEY |
      IB_SA_MCMEMBER_REC_JOIN_STATE,
      GFP_ATOMIC,
      ipoib_mcast_sendonly_join_complete,
      mcast);
 if (IS_ERR(mcast->mc)) {
  ret = PTR_ERR(mcast->mc);
  clear_bit(IPOIB_MCAST_FLAG_BUSY, &mcast->flags);
  ipoib_warn(priv, "ib_sa_join_multicast failed (ret = %d)\n",
      ret);
 } else {
  ipoib_dbg_mcast(priv, "no multicast record for %pI6, starting join\n",
    mcast->mcmember.mgid.raw);
 }

 return ret;
}
