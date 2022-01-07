
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rxdma_mailbox {scalar_t__ rcrstat_a; scalar_t__ rx_dma_ctl_stat; } ;
struct rx_ring_info {scalar_t__ rbr_refill_pending; scalar_t__ rbr_kick_thresh; int rx_channel; struct rxdma_mailbox* mbox; } ;
struct niu {TYPE_1__* dev; } ;
struct napi_struct {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int GFP_ATOMIC ;
 int RCRSTAT_A (int ) ;
 int RCRSTAT_A_QLEN ;
 int RX_DMA_CTL_STAT (int ) ;
 int RX_DMA_CTL_STAT_MEX ;
 int RX_DMA_CTL_STAT_PKTREAD_SHIFT ;
 int RX_DMA_CTL_STAT_PTRREAD_SHIFT ;
 int RX_STATUS ;
 int le64_to_cpup (scalar_t__*) ;
 int min (int,int) ;
 scalar_t__ niu_process_rx_pkt (struct napi_struct*,struct niu*,struct rx_ring_info*) ;
 int niu_rbr_refill (struct niu*,struct rx_ring_info*,int ) ;
 int niu_sync_rx_discard_stats (struct niu*,struct rx_ring_info*,int) ;
 int niudbg (int ,char*,int ,int ,unsigned long long,int) ;
 int nr64 (int ) ;
 int nw64 (int ,int) ;

__attribute__((used)) static int niu_rx_work(struct napi_struct *napi, struct niu *np,
         struct rx_ring_info *rp, int budget)
{
 int qlen, rcr_done = 0, work_done = 0;
 struct rxdma_mailbox *mbox = rp->mbox;
 u64 stat;


 stat = nr64(RX_DMA_CTL_STAT(rp->rx_channel));
 qlen = nr64(RCRSTAT_A(rp->rx_channel)) & RCRSTAT_A_QLEN;




 mbox->rx_dma_ctl_stat = 0;
 mbox->rcrstat_a = 0;

 niudbg(RX_STATUS, "%s: niu_rx_work(chan[%d]), stat[%llx] qlen=%d\n",
        np->dev->name, rp->rx_channel, (unsigned long long) stat, qlen);

 rcr_done = work_done = 0;
 qlen = min(qlen, budget);
 while (work_done < qlen) {
  rcr_done += niu_process_rx_pkt(napi, np, rp);
  work_done++;
 }

 if (rp->rbr_refill_pending >= rp->rbr_kick_thresh) {
  unsigned int i;

  for (i = 0; i < rp->rbr_refill_pending; i++)
   niu_rbr_refill(np, rp, GFP_ATOMIC);
  rp->rbr_refill_pending = 0;
 }

 stat = (RX_DMA_CTL_STAT_MEX |
  ((u64)work_done << RX_DMA_CTL_STAT_PKTREAD_SHIFT) |
  ((u64)rcr_done << RX_DMA_CTL_STAT_PTRREAD_SHIFT));

 nw64(RX_DMA_CTL_STAT(rp->rx_channel), stat);


 if (qlen > 10)
  niu_sync_rx_discard_stats(np, rp, 0x7FFF);

 return work_done;
}
