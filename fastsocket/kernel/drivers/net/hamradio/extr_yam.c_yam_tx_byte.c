
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct yam_port {int tx_state; int tx_count; int tx_len; unsigned char* tx_buf; int tx_crcl; int tx_crch; int bitrate; int txtail; int dupmode; int holdd; int send_queue; } ;
struct sk_buff {int len; int * data; } ;
struct TYPE_2__ {int tx_packets; } ;
struct net_device {TYPE_1__ stats; int base_addr; } ;


 int THR (int ) ;






 int YAM_MAX_FRAME ;
 unsigned char* chktabh ;
 unsigned char* chktabl ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int outb (unsigned char,int ) ;
 int ptt_off (struct net_device*) ;
 int skb_copy_from_linear_data_offset (struct sk_buff*,int,unsigned char*,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static void yam_tx_byte(struct net_device *dev, struct yam_port *yp)
{
 struct sk_buff *skb;
 unsigned char b, temp;

 switch (yp->tx_state) {
 case 129:
  break;
 case 130:
  if (--yp->tx_count <= 0) {
   if (!(skb = skb_dequeue(&yp->send_queue))) {
    ptt_off(dev);
    yp->tx_state = 129;
    break;
   }
   yp->tx_state = 131;
   if (skb->data[0] != 0) {

    dev_kfree_skb_any(skb);
    break;
   }
   yp->tx_len = skb->len - 1;
   if (yp->tx_len >= YAM_MAX_FRAME || yp->tx_len < 2) {
           dev_kfree_skb_any(skb);
    break;
   }
   skb_copy_from_linear_data_offset(skb, 1,
        yp->tx_buf,
        yp->tx_len);
   dev_kfree_skb_any(skb);
   yp->tx_count = 0;
   yp->tx_crcl = 0x21;
   yp->tx_crch = 0xf3;
   yp->tx_state = 131;
  }
  break;
 case 131:
  b = yp->tx_buf[yp->tx_count++];
  outb(b, THR(dev->base_addr));
  temp = yp->tx_crcl;
  yp->tx_crcl = chktabl[temp] ^ yp->tx_crch;
  yp->tx_crch = chktabh[temp] ^ b;
  if (yp->tx_count >= yp->tx_len) {
   yp->tx_state = 133;
  }
  break;
 case 133:
  yp->tx_crch = chktabl[yp->tx_crcl] ^ yp->tx_crch;
  yp->tx_crcl = chktabh[yp->tx_crcl] ^ chktabl[yp->tx_crch] ^ 0xff;
  outb(yp->tx_crcl, THR(dev->base_addr));
  yp->tx_state = 132;
  break;
 case 132:
  outb(chktabh[yp->tx_crch] ^ 0xFF, THR(dev->base_addr));
  if (skb_queue_empty(&yp->send_queue)) {
   yp->tx_count = (yp->bitrate * yp->txtail) / 8000;
   if (yp->dupmode == 2)
    yp->tx_count += (yp->bitrate * yp->holdd) / 8;
   if (yp->tx_count == 0)
    yp->tx_count = 1;
   yp->tx_state = 128;
  } else {
   yp->tx_count = 1;
   yp->tx_state = 130;
  }
  ++dev->stats.tx_packets;
  break;
 case 128:
  if (--yp->tx_count <= 0) {
   yp->tx_state = 129;
   ptt_off(dev);
  }
  break;
 }
}
