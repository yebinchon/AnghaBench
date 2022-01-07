
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idt77252_dev {int name; int flags; } ;


 int IDT77252_BIT_INIT ;
 int IPRINTK (char*,int ) ;
 int SAR_CFG_FBIE ;
 int SAR_CFG_PHYIE ;
 int SAR_CFG_RAWIE ;
 int SAR_CFG_RQFIE ;
 int SAR_CFG_RXPTH ;
 int SAR_CFG_TMOIE ;
 int SAR_CFG_TXEN ;
 int SAR_CFG_TXINT ;
 int SAR_CFG_TXSFI ;
 int SAR_CFG_TXUIE ;
 int SAR_CFG_VPECA ;
 int SAR_REG_CFG ;
 int SAR_RX_DELAY ;
 scalar_t__ open_card_oam (struct idt77252_dev*) ;
 scalar_t__ open_card_ubr0 (struct idt77252_dev*) ;
 int printk (char*,int ) ;
 int readl (int ) ;
 int test_bit (int ,int *) ;
 int writel (int,int ) ;

__attribute__((used)) static int
idt77252_dev_open(struct idt77252_dev *card)
{
 u32 conf;

 if (!test_bit(IDT77252_BIT_INIT, &card->flags)) {
  printk("%s: SAR not yet initialized.\n", card->name);
  return -1;
 }

 conf = SAR_CFG_RXPTH|
     SAR_RX_DELAY |
     SAR_CFG_RAWIE |
     SAR_CFG_RQFIE |
     SAR_CFG_TMOIE |
     SAR_CFG_FBIE |
     SAR_CFG_TXEN |
     SAR_CFG_TXINT |
     SAR_CFG_TXUIE |
     SAR_CFG_TXSFI |
     SAR_CFG_PHYIE
     ;






 writel(readl(SAR_REG_CFG) | conf, SAR_REG_CFG);

 if (open_card_oam(card)) {
  printk("%s: Error initializing OAM.\n", card->name);
  return -1;
 }

 if (open_card_ubr0(card)) {
  printk("%s: Error initializing UBR0.\n", card->name);
  return -1;
 }

 IPRINTK("%s: opened IDT77252 ABR SAR.\n", card->name);
 return 0;
}
