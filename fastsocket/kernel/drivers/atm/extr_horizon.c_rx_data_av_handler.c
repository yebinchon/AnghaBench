
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int u32 ;
typedef size_t u16 ;
struct sk_buff {int data; } ;
struct TYPE_14__ {scalar_t__ traffic_class; size_t max_sdu; } ;
struct TYPE_15__ {TYPE_1__ rxtp; } ;
struct atm_vcc {TYPE_2__ qos; } ;
struct TYPE_16__ {size_t rx_bytes; int flags; int rx_addr; int rx_channel; struct sk_buff* rx_skb; struct atm_vcc** rxer; } ;
typedef TYPE_3__ hrz_dev ;
struct TYPE_13__ {struct atm_vcc* vcc; } ;


 scalar_t__ ATM_NONE ;
 TYPE_12__* ATM_SKB (struct sk_buff*) ;
 int DBG_ERR ;
 int DBG_FLOW ;
 int DBG_RX ;
 int DBG_SKB ;
 int DBG_VCC ;
 int DBG_WARN ;
 int FLUSH_RX_CHANNEL (TYPE_3__*,size_t) ;
 int GFP_ATOMIC ;
 int KERN_ERR ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int PRINTD (int,char*,...) ;
 int PRINTK (int ,char*,...) ;
 int RX_COMPLETE_FRAME ;
 int RX_CRC_32_OK ;
 int SELECT_RX_CHANNEL (TYPE_3__*,size_t) ;
 int SIMONS_DODGEY_MARKER ;
 int WAIT_FLUSH_RX_COMPLETE (TYPE_3__*) ;
 int YELLOW_LED_OFF (TYPE_3__*) ;
 int YELLOW_LED_ON (TYPE_3__*) ;
 struct sk_buff* atm_alloc_charge (struct atm_vcc*,size_t,int ) ;
 int clear_bit (int ,int *) ;
 int rx_busy ;
 size_t rx_q_entry_to_length (int) ;
 size_t rx_q_entry_to_rx_channel (int) ;
 int rx_queue_entry_next (TYPE_3__*) ;
 int rx_schedule (TYPE_3__*,int ) ;
 int skb_put (struct sk_buff*,size_t) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void rx_data_av_handler (hrz_dev * dev) {
  u32 rx_queue_entry;
  u32 rx_queue_entry_flags;
  u16 rx_len;
  u16 rx_channel;

  PRINTD (DBG_FLOW, "hrz_data_av_handler");


  if (test_and_set_bit (rx_busy, &dev->flags)) {
    PRINTD (DBG_RX, "locked out of rx lock");
    return;
  }
  PRINTD (DBG_RX, "set rx_busy for dev %p", dev);


  YELLOW_LED_OFF(dev);

  rx_queue_entry = rx_queue_entry_next (dev);

  rx_len = rx_q_entry_to_length (rx_queue_entry);
  rx_channel = rx_q_entry_to_rx_channel (rx_queue_entry);

  WAIT_FLUSH_RX_COMPLETE (dev);

  SELECT_RX_CHANNEL (dev, rx_channel);

  PRINTD (DBG_RX, "rx_queue_entry is: %#x", rx_queue_entry);
  rx_queue_entry_flags = rx_queue_entry & (RX_CRC_32_OK|RX_COMPLETE_FRAME|SIMONS_DODGEY_MARKER);

  if (!rx_len) {


    PRINTK (KERN_ERR, "zero-length frame!");
    rx_queue_entry_flags &= ~RX_COMPLETE_FRAME;
  }

  if (rx_queue_entry_flags & SIMONS_DODGEY_MARKER) {
    PRINTD (DBG_RX|DBG_ERR, "Simon's marker detected!");
  }
  if (rx_queue_entry_flags == (RX_CRC_32_OK | RX_COMPLETE_FRAME)) {
    struct atm_vcc * atm_vcc;

    PRINTD (DBG_RX, "got a frame on rx_channel %x len %u", rx_channel, rx_len);

    atm_vcc = dev->rxer[rx_channel];



    if (atm_vcc) {

      if (atm_vcc->qos.rxtp.traffic_class != ATM_NONE) {

 if (rx_len <= atm_vcc->qos.rxtp.max_sdu) {

   struct sk_buff * skb = atm_alloc_charge (atm_vcc, rx_len, GFP_ATOMIC);
   if (skb) {

     dev->rx_skb = skb;

     dev->rx_channel = rx_channel;


     skb_put (skb, rx_len);
     ATM_SKB(skb)->vcc = atm_vcc;




     dev->rx_bytes = rx_len;
     dev->rx_addr = skb->data;
     PRINTD (DBG_RX, "RX start simple transfer (addr %p, len %d)",
      skb->data, rx_len);


     rx_schedule (dev, 0);
     return;

   } else {
     PRINTD (DBG_SKB|DBG_WARN, "failed to get skb");
   }

 } else {
   PRINTK (KERN_INFO, "frame received on TX-only VC %x", rx_channel);

 }

      } else {
 PRINTK (KERN_WARNING, "dropped over-size frame");

      }

    } else {
      PRINTD (DBG_WARN|DBG_VCC|DBG_RX, "no VCC for this frame (VC closed)");

    }

  } else {

  }


  YELLOW_LED_ON(dev);

  FLUSH_RX_CHANNEL (dev,rx_channel);
  clear_bit (rx_busy, &dev->flags);

  return;
}
