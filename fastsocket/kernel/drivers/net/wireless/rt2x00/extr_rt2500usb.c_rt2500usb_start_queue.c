
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rt2x00_dev {int dummy; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;




 int TXRX_CSR19 ;
 int TXRX_CSR19_BEACON_GEN ;
 int TXRX_CSR19_TBCN ;
 int TXRX_CSR19_TSF_COUNT ;
 int TXRX_CSR2 ;
 int TXRX_CSR2_DISABLE_RX ;
 int rt2500usb_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2500usb_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field16 (int *,int ,int) ;

__attribute__((used)) static void rt2500usb_start_queue(struct data_queue *queue)
{
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 u16 reg;

 switch (queue->qid) {
 case 128:
  rt2500usb_register_read(rt2x00dev, TXRX_CSR2, &reg);
  rt2x00_set_field16(&reg, TXRX_CSR2_DISABLE_RX, 0);
  rt2500usb_register_write(rt2x00dev, TXRX_CSR2, reg);
  break;
 case 129:
  rt2500usb_register_read(rt2x00dev, TXRX_CSR19, &reg);
  rt2x00_set_field16(&reg, TXRX_CSR19_TSF_COUNT, 1);
  rt2x00_set_field16(&reg, TXRX_CSR19_TBCN, 1);
  rt2x00_set_field16(&reg, TXRX_CSR19_BEACON_GEN, 1);
  rt2500usb_register_write(rt2x00dev, TXRX_CSR19, reg);
  break;
 default:
  break;
 }
}
