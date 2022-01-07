
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {struct orinoco_pci_card* card; } ;
struct orinoco_pci_card {scalar_t__ bridge_io; scalar_t__ attr_io; } ;


 scalar_t__ COR_OFFSET ;
 int COR_VALUE ;
 int ioread16 (scalar_t__) ;
 int iowrite16 (int,scalar_t__) ;
 int mdelay (int) ;

__attribute__((used)) static int orinoco_nortel_cor_reset(struct orinoco_private *priv)
{
 struct orinoco_pci_card *card = priv->card;


 iowrite16(8, card->bridge_io + 2);
 ioread16(card->attr_io + COR_OFFSET);
 iowrite16(0x80, card->attr_io + COR_OFFSET);
 mdelay(1);


 iowrite16(0, card->attr_io + COR_OFFSET);
 iowrite16(0, card->attr_io + COR_OFFSET);
 mdelay(1);


 iowrite16(COR_VALUE, card->attr_io + COR_OFFSET);
 iowrite16(COR_VALUE, card->attr_io + COR_OFFSET);
 mdelay(1);

 iowrite16(0x228, card->bridge_io + 2);

 return 0;
}
