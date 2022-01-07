
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct TYPE_3__ {unsigned short rx_bytes; int rx_dropped; int rx_packets; } ;
struct net_device {TYPE_1__ stats; int name; } ;
struct fst_port_info {int index; int rxpos; scalar_t__ mode; } ;
struct fst_card_info {scalar_t__ family; unsigned short dma_len_rx; int dma_rxpos; scalar_t__ rx_dma_handle_card; struct fst_port_info* dma_port_rx; struct sk_buff* dma_skb_rx; scalar_t__ mem; int card_no; scalar_t__ dmarx_in_progress; } ;
struct TYPE_4__ {int bits; int mcnt; } ;


 scalar_t__ BUF_OFFSET (int ) ;
 int DBG_ASS ;
 int DBG_INTR ;
 int DBG_RX ;
 unsigned char DMA_OWN ;
 scalar_t__ FST_FAMILY_TXP ;
 unsigned short FST_MIN_DMA_LEN ;
 scalar_t__ FST_RAW ;
 unsigned char FST_RDB (struct fst_card_info*,int ) ;
 unsigned short FST_RDW (struct fst_card_info*,int ) ;
 int FST_WRB (struct fst_card_info*,int ,unsigned char) ;
 int LEN_RX_BUFFER ;
 int NET_RX_DROP ;
 int NUM_RX_BUFFER ;
 unsigned char RX_ENP ;
 unsigned char RX_STP ;
 int dbg (int,char*,...) ;
 struct sk_buff* dev_alloc_skb (unsigned short) ;
 int farsync_type_trans (struct sk_buff*,struct net_device*) ;
 int fst_log_rx_error (struct fst_card_info*,struct fst_port_info*,unsigned char,int,unsigned short) ;
 int fst_process_rx_status (int,int ) ;
 int fst_recover_rx_error (struct fst_card_info*,struct fst_port_info*,unsigned char,int,unsigned short) ;
 int fst_rx_dma (struct fst_card_info*,char*,char*,unsigned short) ;
 int hdlc_type_trans (struct sk_buff*,struct net_device*) ;
 int memcpy_fromio (int ,scalar_t__,unsigned short) ;
 int netif_rx (struct sk_buff*) ;
 struct net_device* port_to_dev (struct fst_port_info*) ;
 int printk_err (char*,int ,int) ;
 int *** rxBuffer ;
 TYPE_2__** rxDescrRing ;
 int skb_put (struct sk_buff*,unsigned short) ;

__attribute__((used)) static void
fst_intr_rx(struct fst_card_info *card, struct fst_port_info *port)
{
 unsigned char dmabits;
 int pi;
 int rxp;
 int rx_status;
 unsigned short len;
 struct sk_buff *skb;
 struct net_device *dev = port_to_dev(port);


 pi = port->index;
 rxp = port->rxpos;
 dmabits = FST_RDB(card, rxDescrRing[pi][rxp].bits);
 if (dmabits & DMA_OWN) {
  dbg(DBG_RX | DBG_INTR, "intr_rx: No buffer port %d pos %d\n",
      pi, rxp);
  return;
 }
 if (card->dmarx_in_progress) {
  return;
 }


 len = FST_RDW(card, rxDescrRing[pi][rxp].mcnt);

 len -= 2;
 if (len == 0) {




  printk_err("Frame received with 0 length. Card %d Port %d\n",
      card->card_no, port->index);

  FST_WRB(card, rxDescrRing[pi][rxp].bits, DMA_OWN);

  rxp = (rxp+1) % NUM_RX_BUFFER;
  port->rxpos = rxp;
  return;
 }





 dbg(DBG_RX, "intr_rx: %d,%d: flags %x len %d\n", pi, rxp, dmabits, len);
 if (dmabits != (RX_STP | RX_ENP) || len > LEN_RX_BUFFER - 2) {
  fst_log_rx_error(card, port, dmabits, rxp, len);
  fst_recover_rx_error(card, port, dmabits, rxp, len);
  return;
 }


 if ((skb = dev_alloc_skb(len)) == ((void*)0)) {
  dbg(DBG_RX, "intr_rx: can't allocate buffer\n");

  dev->stats.rx_dropped++;


  FST_WRB(card, rxDescrRing[pi][rxp].bits, DMA_OWN);

  rxp = (rxp+1) % NUM_RX_BUFFER;
  port->rxpos = rxp;
  return;
 }







 if ((len < FST_MIN_DMA_LEN) || (card->family == FST_FAMILY_TXP)) {
  memcpy_fromio(skb_put(skb, len),
         card->mem + BUF_OFFSET(rxBuffer[pi][rxp][0]),
         len);


  FST_WRB(card, rxDescrRing[pi][rxp].bits, DMA_OWN);


  dev->stats.rx_packets++;
  dev->stats.rx_bytes += len;


  dbg(DBG_RX, "Pushing frame up the stack\n");
  if (port->mode == FST_RAW)
   skb->protocol = farsync_type_trans(skb, dev);
  else
   skb->protocol = hdlc_type_trans(skb, dev);
  rx_status = netif_rx(skb);
  fst_process_rx_status(rx_status, port_to_dev(port)->name);
  if (rx_status == NET_RX_DROP)
   dev->stats.rx_dropped++;
 } else {
  card->dma_skb_rx = skb;
  card->dma_port_rx = port;
  card->dma_len_rx = len;
  card->dma_rxpos = rxp;
  fst_rx_dma(card, (char *) card->rx_dma_handle_card,
      (char *) BUF_OFFSET(rxBuffer[pi][rxp][0]), len);
 }
 if (rxp != port->rxpos) {
  dbg(DBG_ASS, "About to increment rxpos by more than 1\n");
  dbg(DBG_ASS, "rxp = %d rxpos = %d\n", rxp, port->rxpos);
 }
 rxp = (rxp+1) % NUM_RX_BUFFER;
 port->rxpos = rxp;
}
