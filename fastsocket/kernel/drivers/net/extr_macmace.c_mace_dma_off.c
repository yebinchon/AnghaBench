
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 scalar_t__ PSC_ENETRD_CMD ;
 scalar_t__ PSC_ENETRD_CTL ;
 scalar_t__ PSC_ENETWR_CMD ;
 scalar_t__ PSC_ENETWR_CTL ;
 scalar_t__ PSC_SET0 ;
 scalar_t__ PSC_SET1 ;
 int psc_write_word (scalar_t__,int) ;

__attribute__((used)) static void mace_dma_off(struct net_device *dev)
{
 psc_write_word(PSC_ENETRD_CTL, 0x8800);
 psc_write_word(PSC_ENETRD_CTL, 0x1000);
 psc_write_word(PSC_ENETRD_CMD + PSC_SET0, 0x1100);
 psc_write_word(PSC_ENETRD_CMD + PSC_SET1, 0x1100);

 psc_write_word(PSC_ENETWR_CTL, 0x8800);
 psc_write_word(PSC_ENETWR_CTL, 0x1000);
 psc_write_word(PSC_ENETWR_CMD + PSC_SET0, 0x1100);
 psc_write_word(PSC_ENETWR_CMD + PSC_SET1, 0x1100);
}
