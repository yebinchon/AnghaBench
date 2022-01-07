
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rxdma_mailbox {int rx_dma_ctl_stat; } ;
struct rx_ring_info {int rx_channel; struct rxdma_mailbox* mbox; } ;
struct niu {TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int INTR ;
 int RX_DMA_CTL_STAT (int ) ;
 int RX_DMA_CTL_STAT_RCRTHRES ;
 int RX_DMA_CTL_STAT_RCRTO ;
 int le64_to_cpup (int *) ;
 int niudbg (int ,char*,int ,unsigned long long) ;
 int nw64 (int ,int) ;

__attribute__((used)) static void niu_rxchan_intr(struct niu *np, struct rx_ring_info *rp,
       int ldn)
{
 struct rxdma_mailbox *mbox = rp->mbox;
 u64 stat_write, stat = le64_to_cpup(&mbox->rx_dma_ctl_stat);

 stat_write = (RX_DMA_CTL_STAT_RCRTHRES |
        RX_DMA_CTL_STAT_RCRTO);
 nw64(RX_DMA_CTL_STAT(rp->rx_channel), stat_write);

 niudbg(INTR, "%s: rxchan_intr stat[%llx]\n",
        np->dev->name, (unsigned long long) stat);
}
