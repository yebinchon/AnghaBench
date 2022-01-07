
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct link_qual {void* false_cca; void* rx_failed; } ;


 int CNT0 ;
 int CNT0_FCS_ERROR ;
 int CNT3 ;
 int CNT3_FALSE_CCA ;
 void* rt2x00_get_field32 (int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;

__attribute__((used)) static void rt2500pci_link_stats(struct rt2x00_dev *rt2x00dev,
     struct link_qual *qual)
{
 u32 reg;




 rt2x00mmio_register_read(rt2x00dev, CNT0, &reg);
 qual->rx_failed = rt2x00_get_field32(reg, CNT0_FCS_ERROR);




 rt2x00mmio_register_read(rt2x00dev, CNT3, &reg);
 qual->false_cca = rt2x00_get_field32(reg, CNT3_FALSE_CCA);
}
