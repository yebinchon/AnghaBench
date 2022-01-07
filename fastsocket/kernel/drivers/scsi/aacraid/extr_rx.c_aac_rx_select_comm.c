
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adapter_deliver; int adapter_intr; int adapter_enable_int; } ;
struct aac_dev {TYPE_1__ a_ops; } ;




 int aac_rx_deliver_message ;
 int aac_rx_deliver_producer ;
 int aac_rx_enable_interrupt_message ;
 int aac_rx_enable_interrupt_producer ;
 int aac_rx_intr_message ;
 int aac_rx_intr_producer ;

int aac_rx_select_comm(struct aac_dev *dev, int comm)
{
 switch (comm) {
 case 128:
  dev->a_ops.adapter_enable_int = aac_rx_enable_interrupt_producer;
  dev->a_ops.adapter_intr = aac_rx_intr_producer;
  dev->a_ops.adapter_deliver = aac_rx_deliver_producer;
  break;
 case 129:
  dev->a_ops.adapter_enable_int = aac_rx_enable_interrupt_message;
  dev->a_ops.adapter_intr = aac_rx_intr_message;
  dev->a_ops.adapter_deliver = aac_rx_deliver_message;
  break;
 default:
  return 1;
 }
 return 0;
}
