
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct net_device {int dummy; } ;
struct ixgbe_fcoe_ddp {int len; int * pool; int udp; int udl; int sgc; scalar_t__ sgl; scalar_t__ err; } ;
struct ixgbe_fcoe {int lock; struct ixgbe_fcoe_ddp* ddp; } ;
struct ixgbe_adapter {TYPE_1__* pdev; int hw; struct ixgbe_fcoe fcoe; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int IXGBE_FCBUFF ;
 int IXGBE_FCBUFF_VALID ;
 int IXGBE_FCDMARW ;
 size_t IXGBE_FCDMARW_RE ;
 size_t IXGBE_FCDMARW_WE ;
 int IXGBE_FCFLT ;
 int IXGBE_FCFLTRW ;
 size_t IXGBE_FCFLTRW_WE ;
 size_t IXGBE_FCOE_DDP_MAX ;
 int IXGBE_READ_REG (int *,int ) ;
 int IXGBE_WRITE_REG (int *,int ,size_t) ;
 int dma_pool_free (int *,int ,int ) ;
 int dma_unmap_sg (int *,scalar_t__,int ,int ) ;
 int ixgbe_fcoe_clear_ddp (struct ixgbe_fcoe_ddp*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int udelay (int) ;

int ixgbe_fcoe_ddp_put(struct net_device *netdev, u16 xid)
{
 int len = 0;
 struct ixgbe_fcoe *fcoe;
 struct ixgbe_adapter *adapter;
 struct ixgbe_fcoe_ddp *ddp;
 u32 fcbuff;

 if (!netdev)
  goto out_ddp_put;

 if (xid >= IXGBE_FCOE_DDP_MAX)
  goto out_ddp_put;

 adapter = netdev_priv(netdev);
 fcoe = &adapter->fcoe;
 ddp = &fcoe->ddp[xid];
 if (!ddp->udl)
  goto out_ddp_put;

 len = ddp->len;

 if (ddp->err) {
  spin_lock_bh(&fcoe->lock);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_FCFLT, 0);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_FCFLTRW,
    (xid | IXGBE_FCFLTRW_WE));
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_FCBUFF, 0);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_FCDMARW,
    (xid | IXGBE_FCDMARW_WE));


  IXGBE_WRITE_REG(&adapter->hw, IXGBE_FCDMARW,
    (xid | IXGBE_FCDMARW_RE));
  fcbuff = IXGBE_READ_REG(&adapter->hw, IXGBE_FCBUFF);
  spin_unlock_bh(&fcoe->lock);
  if (fcbuff & IXGBE_FCBUFF_VALID)
   udelay(100);
 }
 if (ddp->sgl)
  dma_unmap_sg(&adapter->pdev->dev, ddp->sgl, ddp->sgc,
        DMA_FROM_DEVICE);
 if (ddp->pool) {
  dma_pool_free(ddp->pool, ddp->udl, ddp->udp);
  ddp->pool = ((void*)0);
 }

 ixgbe_fcoe_clear_ddp(ddp);

out_ddp_put:
 return len;
}
