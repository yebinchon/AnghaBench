
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sk_buff {int len; unsigned int data; } ;
struct TYPE_8__ {unsigned int tx_bytes; } ;
struct net_device {int name; int dma; TYPE_1__ stats; } ;
struct Xmit_pkt {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_11__ {int direction; struct sk_buff* skb; int start_time; } ;
struct TYPE_9__ {unsigned int pkt_len; scalar_t__ buf_seg; scalar_t__ buf_ofs; } ;
struct TYPE_10__ {TYPE_2__ xmit_pkt; } ;
struct TYPE_13__ {int length; TYPE_3__ data; int command; } ;
struct TYPE_12__ {unsigned int dma_buffer; int hcr_val; TYPE_4__ current_dma; int dmaing; scalar_t__ busy; TYPE_6__ tx_pcb; } ;
typedef TYPE_5__ elp_device ;


 int CMD_TRANSMIT_PACKET ;
 int DMAE ;
 unsigned long MAX_DMA_ADDRESS ;
 int TCEN ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 int disable_dma (int ) ;
 int elp_debug ;
 int enable_dma (int ) ;
 unsigned long isa_virt_to_bus (unsigned int) ;
 int jiffies ;
 int memset (unsigned int,int ,unsigned int) ;
 TYPE_5__* netdev_priv (struct net_device*) ;
 int outb_control (int,struct net_device*) ;
 int pr_debug (char*,int ,...) ;
 int release_dma_lock (unsigned long) ;
 int send_pcb (struct net_device*,TYPE_6__*) ;
 int set_dma_addr (int ,unsigned long) ;
 int set_dma_count (int ,unsigned int) ;
 int set_dma_mode (int ,int) ;
 int skb_copy_from_linear_data (struct sk_buff*,unsigned int,unsigned int) ;
 scalar_t__ test_and_set_bit (int ,void*) ;

__attribute__((used)) static netdev_tx_t send_packet(struct net_device *dev, struct sk_buff *skb)
{
 elp_device *adapter = netdev_priv(dev);
 unsigned long target;
 unsigned long flags;




 unsigned int nlen = (((skb->len < 60) ? 60 : skb->len) + 1) & (~1);

 if (test_and_set_bit(0, (void *) &adapter->busy)) {
  if (elp_debug >= 2)
   pr_debug("%s: transmit blocked\n", dev->name);
  return 0;
 }

 dev->stats.tx_bytes += nlen;





 adapter->tx_pcb.command = CMD_TRANSMIT_PACKET;
 adapter->tx_pcb.length = sizeof(struct Xmit_pkt);
 adapter->tx_pcb.data.xmit_pkt.buf_ofs
     = adapter->tx_pcb.data.xmit_pkt.buf_seg = 0;
 adapter->tx_pcb.data.xmit_pkt.pkt_len = nlen;

 if (!send_pcb(dev, &adapter->tx_pcb)) {
  adapter->busy = 0;
  return 0;
 }

 if (test_and_set_bit(0, (void *) &adapter->dmaing))
  pr_debug("%s: tx: DMA %d in progress\n", dev->name, adapter->current_dma.direction);

 adapter->current_dma.direction = 1;
 adapter->current_dma.start_time = jiffies;

 if ((unsigned long)(skb->data + nlen) >= MAX_DMA_ADDRESS || nlen != skb->len) {
  skb_copy_from_linear_data(skb, adapter->dma_buffer, nlen);
  memset(adapter->dma_buffer+skb->len, 0, nlen-skb->len);
  target = isa_virt_to_bus(adapter->dma_buffer);
 }
 else {
  target = isa_virt_to_bus(skb->data);
 }
 adapter->current_dma.skb = skb;

 flags=claim_dma_lock();
 disable_dma(dev->dma);
 clear_dma_ff(dev->dma);
 set_dma_mode(dev->dma, 0x48);
 set_dma_addr(dev->dma, target);
 set_dma_count(dev->dma, nlen);
 outb_control(adapter->hcr_val | DMAE | TCEN, dev);
 enable_dma(dev->dma);
 release_dma_lock(flags);

 if (elp_debug >= 3)
  pr_debug("%s: DMA transfer started\n", dev->name);

 return 1;
}
