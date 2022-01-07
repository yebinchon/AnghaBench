
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int MAC_SYS_CTRL ;
 int MAC_SYS_CTRL_ENABLE_RX ;
 int MAC_SYS_CTRL_ENABLE_TX ;
 int rt2800_disable_wpdma (struct rt2x00_dev*) ;
 int rt2800_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2800_wait_wpdma_ready (struct rt2x00_dev*) ;
 int rt2x00_set_field32 (int *,int ,int ) ;

void rt2800_disable_radio(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;

 rt2800_disable_wpdma(rt2x00dev);


 rt2800_wait_wpdma_ready(rt2x00dev);

 rt2800_register_read(rt2x00dev, MAC_SYS_CTRL, &reg);
 rt2x00_set_field32(&reg, MAC_SYS_CTRL_ENABLE_TX, 0);
 rt2x00_set_field32(&reg, MAC_SYS_CTRL_ENABLE_RX, 0);
 rt2800_register_write(rt2x00dev, MAC_SYS_CTRL, reg);
}
