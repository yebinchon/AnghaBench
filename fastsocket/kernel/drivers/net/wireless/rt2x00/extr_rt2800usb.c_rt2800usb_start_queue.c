
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;


 int BCN_TIME_CFG ;
 int BCN_TIME_CFG_BEACON_GEN ;
 int BCN_TIME_CFG_TBTT_ENABLE ;
 int BCN_TIME_CFG_TSF_TICKING ;
 int MAC_SYS_CTRL ;
 int MAC_SYS_CTRL_ENABLE_RX ;


 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00usb_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00usb_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt2800usb_start_queue(struct data_queue *queue)
{
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 u32 reg;

 switch (queue->qid) {
 case 128:
  rt2x00usb_register_read(rt2x00dev, MAC_SYS_CTRL, &reg);
  rt2x00_set_field32(&reg, MAC_SYS_CTRL_ENABLE_RX, 1);
  rt2x00usb_register_write(rt2x00dev, MAC_SYS_CTRL, reg);
  break;
 case 129:
  rt2x00usb_register_read(rt2x00dev, BCN_TIME_CFG, &reg);
  rt2x00_set_field32(&reg, BCN_TIME_CFG_TSF_TICKING, 1);
  rt2x00_set_field32(&reg, BCN_TIME_CFG_TBTT_ENABLE, 1);
  rt2x00_set_field32(&reg, BCN_TIME_CFG_BEACON_GEN, 1);
  rt2x00usb_register_write(rt2x00dev, BCN_TIME_CFG, reg);
  break;
 default:
  break;
 }
}
