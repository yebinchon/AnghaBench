
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;






 int TX_CNTL_CSR ;
 int TX_CNTL_CSR_KICK_TX_AC0 ;
 int TX_CNTL_CSR_KICK_TX_AC1 ;
 int TX_CNTL_CSR_KICK_TX_AC2 ;
 int TX_CNTL_CSR_KICK_TX_AC3 ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt61pci_kick_queue(struct data_queue *queue)
{
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 u32 reg;

 switch (queue->qid) {
 case 128:
  rt2x00mmio_register_read(rt2x00dev, TX_CNTL_CSR, &reg);
  rt2x00_set_field32(&reg, TX_CNTL_CSR_KICK_TX_AC0, 1);
  rt2x00mmio_register_write(rt2x00dev, TX_CNTL_CSR, reg);
  break;
 case 129:
  rt2x00mmio_register_read(rt2x00dev, TX_CNTL_CSR, &reg);
  rt2x00_set_field32(&reg, TX_CNTL_CSR_KICK_TX_AC1, 1);
  rt2x00mmio_register_write(rt2x00dev, TX_CNTL_CSR, reg);
  break;
 case 131:
  rt2x00mmio_register_read(rt2x00dev, TX_CNTL_CSR, &reg);
  rt2x00_set_field32(&reg, TX_CNTL_CSR_KICK_TX_AC2, 1);
  rt2x00mmio_register_write(rt2x00dev, TX_CNTL_CSR, reg);
  break;
 case 130:
  rt2x00mmio_register_read(rt2x00dev, TX_CNTL_CSR, &reg);
  rt2x00_set_field32(&reg, TX_CNTL_CSR_KICK_TX_AC3, 1);
  rt2x00mmio_register_write(rt2x00dev, TX_CNTL_CSR, reg);
  break;
 default:
  break;
 }
}
