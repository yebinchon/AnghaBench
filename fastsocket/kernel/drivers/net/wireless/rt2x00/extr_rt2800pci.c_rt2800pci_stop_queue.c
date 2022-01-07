
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int pretbtt_tasklet; int tbtt_tasklet; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;


 int BCN_TIME_CFG ;
 int BCN_TIME_CFG_BEACON_GEN ;
 int BCN_TIME_CFG_TBTT_ENABLE ;
 int BCN_TIME_CFG_TSF_TICKING ;
 int INT_TIMER_EN ;
 int INT_TIMER_EN_PRE_TBTT_TIMER ;
 int MAC_SYS_CTRL ;
 int MAC_SYS_CTRL_ENABLE_RX ;


 int rt2x00_set_field32 (int *,int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void rt2800pci_stop_queue(struct data_queue *queue)
{
 struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
 u32 reg;

 switch (queue->qid) {
 case 128:
  rt2x00mmio_register_read(rt2x00dev, MAC_SYS_CTRL, &reg);
  rt2x00_set_field32(&reg, MAC_SYS_CTRL_ENABLE_RX, 0);
  rt2x00mmio_register_write(rt2x00dev, MAC_SYS_CTRL, reg);
  break;
 case 129:
  rt2x00mmio_register_read(rt2x00dev, BCN_TIME_CFG, &reg);
  rt2x00_set_field32(&reg, BCN_TIME_CFG_TSF_TICKING, 0);
  rt2x00_set_field32(&reg, BCN_TIME_CFG_TBTT_ENABLE, 0);
  rt2x00_set_field32(&reg, BCN_TIME_CFG_BEACON_GEN, 0);
  rt2x00mmio_register_write(rt2x00dev, BCN_TIME_CFG, reg);

  rt2x00mmio_register_read(rt2x00dev, INT_TIMER_EN, &reg);
  rt2x00_set_field32(&reg, INT_TIMER_EN_PRE_TBTT_TIMER, 0);
  rt2x00mmio_register_write(rt2x00dev, INT_TIMER_EN, reg);






  tasklet_kill(&rt2x00dev->tbtt_tasklet);
  tasklet_kill(&rt2x00dev->pretbtt_tasklet);

  break;
 default:
  break;
 }
}
