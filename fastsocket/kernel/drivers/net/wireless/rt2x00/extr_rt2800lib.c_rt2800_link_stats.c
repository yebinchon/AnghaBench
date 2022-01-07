
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct link_qual {int rx_failed; } ;


 int RX_STA_CNT0 ;
 int RX_STA_CNT0_CRC_ERR ;
 int rt2800_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00_get_field32 (int ,int ) ;

void rt2800_link_stats(struct rt2x00_dev *rt2x00dev, struct link_qual *qual)
{
 u32 reg;




 rt2800_register_read(rt2x00dev, RX_STA_CNT0, &reg);
 qual->rx_failed = rt2x00_get_field32(reg, RX_STA_CNT0_CRC_ERR);
}
