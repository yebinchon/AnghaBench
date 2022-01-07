
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct kwqe_16 {int dummy; } ;
struct TYPE_6__ {int lo; int hi; } ;
struct TYPE_7__ {TYPE_2__ update_data_addr; } ;
struct TYPE_5__ {int type; int conn_and_cmd_data; } ;
struct eth_spe {TYPE_3__ data; TYPE_1__ hdr; } ;
struct TYPE_8__ {scalar_t__ max_kwqe_pending; } ;
struct bnx2x {scalar_t__ recovery_state; scalar_t__ cnic_spq_pending; TYPE_4__ cnic_eth_dev; int spq_lock; struct eth_spe* cnic_kwq_prod; struct eth_spe* cnic_kwq; struct eth_spe* cnic_kwq_last; int cnic_kwq_pending; int panic; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_MSG_SP ;
 scalar_t__ BNX2X_RECOVERY_DONE ;
 scalar_t__ BNX2X_RECOVERY_NIC_LOADING ;
 int DP (int ,char*,int ,int ,int ,int ,int ) ;
 int EAGAIN ;
 int EIO ;
 int MAX_SP_DESC_CNT ;
 int bnx2x_cnic_sp_post (struct bnx2x*,int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int bnx2x_cnic_sp_queue(struct net_device *dev,
          struct kwqe_16 *kwqes[], u32 count)
{
 struct bnx2x *bp = netdev_priv(dev);
 int i;
 if ((bp->recovery_state != BNX2X_RECOVERY_DONE) &&
     (bp->recovery_state != BNX2X_RECOVERY_NIC_LOADING)) {
  BNX2X_ERR("Handling parity error recovery. Try again later\n");
  return -EAGAIN;
 }

 spin_lock_bh(&bp->spq_lock);

 for (i = 0; i < count; i++) {
  struct eth_spe *spe = (struct eth_spe *)kwqes[i];

  if (bp->cnic_kwq_pending == MAX_SP_DESC_CNT)
   break;

  *bp->cnic_kwq_prod = *spe;

  bp->cnic_kwq_pending++;

  DP(BNX2X_MSG_SP, "L5 SPQE %x %x %x:%x pos %d\n",
     spe->hdr.conn_and_cmd_data, spe->hdr.type,
     spe->data.update_data_addr.hi,
     spe->data.update_data_addr.lo,
     bp->cnic_kwq_pending);

  if (bp->cnic_kwq_prod == bp->cnic_kwq_last)
   bp->cnic_kwq_prod = bp->cnic_kwq;
  else
   bp->cnic_kwq_prod++;
 }

 spin_unlock_bh(&bp->spq_lock);

 if (bp->cnic_spq_pending < bp->cnic_eth_dev.max_kwqe_pending)
  bnx2x_cnic_sp_post(bp, 0);

 return i;
}
