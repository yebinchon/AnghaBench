
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct sk_buff {int len; } ;
struct TYPE_16__ {unsigned int tx_bytes; unsigned int tx_regions; unsigned int tx_addr; struct sk_buff* tx_skb; TYPE_1__* tx_iovec; int flags; } ;
typedef TYPE_4__ hrz_dev ;
struct TYPE_15__ {TYPE_2__* stats; } ;
struct TYPE_14__ {int tx; } ;
struct TYPE_13__ {unsigned int iov_base; unsigned int iov_len; } ;
struct TYPE_12__ {TYPE_3__* vcc; } ;


 TYPE_11__* ATM_SKB (struct sk_buff*) ;
 int DATA_PORT_OFF ;
 int DBG_BUS ;
 int DBG_ERR ;
 int DBG_TX ;
 int DBG_WARN ;
 int MASTER_TX_ADDR_REG_OFF ;
 unsigned int MASTER_TX_AUTO_APPEND_DESC ;
 int MASTER_TX_COUNT_REG_OFF ;
 unsigned int MAX_PIO_COUNT ;
 unsigned int MAX_TRANSFER_COUNT ;
 int PRINTD (int,char*) ;
 int TX_DESCRIPTOR_PORT_OFF ;
 int TX_DESCRIPTOR_REG_OFF ;
 int YELLOW_LED_ON (TYPE_4__* const) ;
 int atomic_inc (int *) ;
 unsigned int cpu_to_be32 (int ) ;
 int hrz_kfree_skb (struct sk_buff*) ;
 scalar_t__ rd_regl (TYPE_4__* const,int ) ;
 int spin_count ;
 int test_bit (int ,int *) ;
 int tx_release (TYPE_4__* const) ;
 int ultra ;
 unsigned int virt_to_bus (unsigned int) ;
 int wr_regl (TYPE_4__* const,int ,unsigned int) ;
 int wrs_regb (TYPE_4__* const,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void tx_schedule (hrz_dev * const dev, int irq) {
  unsigned int tx_bytes;

  int append_desc = 0;

  int pio_instead = 0;

  pio_instead = 1;
  while (pio_instead) {


    tx_bytes = dev->tx_bytes;
    if (tx_bytes) {

      if (!test_bit (ultra, &dev->flags) || tx_bytes <= MAX_PIO_COUNT) {
 PRINTD (DBG_TX|DBG_BUS, "(pio)");
 pio_instead = 1;
      }
      if (tx_bytes <= MAX_TRANSFER_COUNT) {
 PRINTD (DBG_TX|DBG_BUS, "(simple or last multi)");
 if (!dev->tx_iovec) {

   append_desc = 1;
 }
 dev->tx_bytes = 0;
      } else {
 PRINTD (DBG_TX|DBG_BUS, "(continuing multi)");
 dev->tx_bytes = tx_bytes - MAX_TRANSFER_COUNT;
 tx_bytes = MAX_TRANSFER_COUNT;
      }
    } else {


      unsigned int tx_regions = dev->tx_regions;

      if (tx_regions) {

 dev->tx_addr = dev->tx_iovec->iov_base;
 tx_bytes = dev->tx_iovec->iov_len;
 ++dev->tx_iovec;
 dev->tx_regions = tx_regions - 1;

 if (!test_bit (ultra, &dev->flags) || tx_bytes <= MAX_PIO_COUNT) {
   PRINTD (DBG_TX|DBG_BUS, "(pio)");
   pio_instead = 1;
 }
 if (tx_bytes <= MAX_TRANSFER_COUNT) {
   PRINTD (DBG_TX|DBG_BUS, "(full region)");
   dev->tx_bytes = 0;
 } else {
   PRINTD (DBG_TX|DBG_BUS, "(start multi region)");
   dev->tx_bytes = tx_bytes - MAX_TRANSFER_COUNT;
   tx_bytes = MAX_TRANSFER_COUNT;
 }
      } else {


 struct sk_buff * skb = dev->tx_skb;
 dev->tx_iovec = ((void*)0);


 atomic_inc(&ATM_SKB(skb)->vcc->stats->tx);


 hrz_kfree_skb (skb);
      }
    }


    if (tx_bytes) {
      if (pio_instead) {
 if (irq)
   wr_regl (dev, MASTER_TX_COUNT_REG_OFF, 0);
 wrs_regb (dev, DATA_PORT_OFF, dev->tx_addr, tx_bytes);
 if (append_desc)
   wr_regl (dev, TX_DESCRIPTOR_PORT_OFF, cpu_to_be32 (dev->tx_skb->len));
      } else {
 wr_regl (dev, MASTER_TX_ADDR_REG_OFF, virt_to_bus (dev->tx_addr));
 if (append_desc)
   wr_regl (dev, TX_DESCRIPTOR_REG_OFF, cpu_to_be32 (dev->tx_skb->len));
 wr_regl (dev, MASTER_TX_COUNT_REG_OFF,
   append_desc
   ? tx_bytes | MASTER_TX_AUTO_APPEND_DESC
   : tx_bytes);
      }
      dev->tx_addr += tx_bytes;
    } else {
      if (irq)
 wr_regl (dev, MASTER_TX_COUNT_REG_OFF, 0);
      YELLOW_LED_ON(dev);
      tx_release (dev);
    }
    irq = 0;
  }
  return;

}
