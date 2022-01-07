
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;





 int TXCSR0 ;
 int TXCSR0_KICK_ATIM ;
 int TXCSR0_KICK_PRIO ;
 int TXCSR0_KICK_TX ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt2400pci_kick_queue(struct data_queue *queue)
{
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 u32 reg;

 switch (queue->qid) {
 case 129:
  rt2x00mmio_register_read(rt2x00dev, TXCSR0, &reg);
  rt2x00_set_field32(&reg, TXCSR0_KICK_PRIO, 1);
  rt2x00mmio_register_write(rt2x00dev, TXCSR0, reg);
  break;
 case 130:
  rt2x00mmio_register_read(rt2x00dev, TXCSR0, &reg);
  rt2x00_set_field32(&reg, TXCSR0_KICK_TX, 1);
  rt2x00mmio_register_write(rt2x00dev, TXCSR0, reg);
  break;
 case 128:
  rt2x00mmio_register_read(rt2x00dev, TXCSR0, &reg);
  rt2x00_set_field32(&reg, TXCSR0_KICK_ATIM, 1);
  rt2x00mmio_register_write(rt2x00dev, TXCSR0, reg);
  break;
 default:
  break;
 }
}
