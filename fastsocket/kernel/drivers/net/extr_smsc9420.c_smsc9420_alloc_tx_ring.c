
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smsc9420_ring_info {int dummy; } ;
struct smsc9420_pdata {int tx_dma_addr; scalar_t__ tx_ring_tail; scalar_t__ tx_ring_head; TYPE_1__* tx_ring; TYPE_2__* tx_buffers; } ;
struct TYPE_4__ {scalar_t__ mapping; int * skb; } ;
struct TYPE_3__ {scalar_t__ length; scalar_t__ buffer2; scalar_t__ buffer1; scalar_t__ status; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IFUP ;
 scalar_t__ TDES1_TER_ ;
 int TX_BASE_ADDR ;
 int TX_RING_SIZE ;
 TYPE_2__* kmalloc (int,int ) ;
 int smsc9420_pci_flush_write (struct smsc9420_pdata*) ;
 int smsc9420_reg_write (struct smsc9420_pdata*,int ,int ) ;
 int smsc_warn (int ,char*) ;
 int wmb () ;

__attribute__((used)) static int smsc9420_alloc_tx_ring(struct smsc9420_pdata *pd)
{
 int i;

 BUG_ON(!pd->tx_ring);

 pd->tx_buffers = kmalloc((sizeof(struct smsc9420_ring_info) *
  TX_RING_SIZE), GFP_KERNEL);
 if (!pd->tx_buffers) {
  smsc_warn(IFUP, "Failed to allocated tx_buffers");
  return -ENOMEM;
 }


 for (i = 0; i < TX_RING_SIZE; i++) {
  pd->tx_buffers[i].skb = ((void*)0);
  pd->tx_buffers[i].mapping = 0;
  pd->tx_ring[i].status = 0;
  pd->tx_ring[i].length = 0;
  pd->tx_ring[i].buffer1 = 0;
  pd->tx_ring[i].buffer2 = 0;
 }
 pd->tx_ring[TX_RING_SIZE - 1].length = TDES1_TER_;
 wmb();

 pd->tx_ring_head = 0;
 pd->tx_ring_tail = 0;

 smsc9420_reg_write(pd, TX_BASE_ADDR, pd->tx_dma_addr);
 smsc9420_pci_flush_write(pd);

 return 0;
}
