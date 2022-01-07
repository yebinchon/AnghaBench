
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct au1k_private {TYPE_1__** rx_ring; scalar_t__ rx_head; scalar_t__ tx_tail; scalar_t__ tx_head; } ;
struct TYPE_2__ {int flags; } ;


 int AU_OWN ;
 int IR_CONFIG_2 ;
 int IR_ENABLE ;
 int IR_INTERFACE_CONFIG ;
 int IR_MAX_PKT_LEN ;
 int IR_ONE_PIN ;
 int IR_RING_ADDR_CMPR ;
 int IR_RING_BASE_ADDR_H ;
 int IR_RING_BASE_ADDR_L ;
 int IR_RING_SIZE ;
 int MAX_BUF_SIZE ;
 int NUM_IR_DESC ;
 int RING_SIZE_64 ;
 int au1k_irda_set_speed (struct net_device*,int) ;
 int au_sync_delay (int) ;
 struct au1k_private* netdev_priv (struct net_device*) ;
 int read_ir_reg (int ) ;
 scalar_t__ virt_to_phys (void*) ;
 int writel (int,int ) ;

__attribute__((used)) static int au1k_init(struct net_device *dev)
{
 struct au1k_private *aup = netdev_priv(dev);
 int i;
 u32 control;
 u32 ring_address;


 control = 0xe;


 control |= 1;

 aup->tx_head = 0;
 aup->tx_tail = 0;
 aup->rx_head = 0;

 for (i=0; i<NUM_IR_DESC; i++) {
  aup->rx_ring[i]->flags = AU_OWN;
 }

 writel(control, IR_INTERFACE_CONFIG);
 au_sync_delay(10);

 writel(read_ir_reg(IR_ENABLE) & ~0x8000, IR_ENABLE);
 au_sync_delay(1);

 writel(MAX_BUF_SIZE, IR_MAX_PKT_LEN);

 ring_address = (u32)virt_to_phys((void *)aup->rx_ring[0]);
 writel(ring_address >> 26, IR_RING_BASE_ADDR_H);
 writel((ring_address >> 10) & 0xffff, IR_RING_BASE_ADDR_L);

 writel(RING_SIZE_64<<8 | RING_SIZE_64<<12, IR_RING_SIZE);

 writel(1<<2 | IR_ONE_PIN, IR_CONFIG_2);
 writel(0, IR_RING_ADDR_CMPR);

 au1k_irda_set_speed(dev, 9600);
 return 0;
}
