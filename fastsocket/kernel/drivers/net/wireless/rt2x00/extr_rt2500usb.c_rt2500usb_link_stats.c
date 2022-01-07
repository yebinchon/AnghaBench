
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rt2x00_dev {int dummy; } ;
struct link_qual {void* false_cca; void* rx_failed; } ;


 int STA_CSR0 ;
 int STA_CSR0_FCS_ERROR ;
 int STA_CSR3 ;
 int STA_CSR3_FALSE_CCA_ERROR ;
 int rt2500usb_register_read (struct rt2x00_dev*,int ,int *) ;
 void* rt2x00_get_field16 (int ,int ) ;

__attribute__((used)) static void rt2500usb_link_stats(struct rt2x00_dev *rt2x00dev,
     struct link_qual *qual)
{
 u16 reg;




 rt2500usb_register_read(rt2x00dev, STA_CSR0, &reg);
 qual->rx_failed = rt2x00_get_field16(reg, STA_CSR0_FCS_ERROR);




 rt2500usb_register_read(rt2x00dev, STA_CSR3, &reg);
 qual->false_cca = rt2x00_get_field16(reg, STA_CSR3_FALSE_CCA_ERROR);
}
