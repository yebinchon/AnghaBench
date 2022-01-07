
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ismt_priv {size_t head; struct ismt_desc* hw; TYPE_1__* pci_dev; } ;
struct ismt_desc {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int __ismt_desc_dump (struct device*,struct ismt_desc*) ;
 int dev_dbg (struct device*,char*,size_t) ;

__attribute__((used)) static void ismt_desc_dump(struct ismt_priv *priv)
{
 struct device *dev = &priv->pci_dev->dev;
 struct ismt_desc *desc = &priv->hw[priv->head];

 dev_dbg(dev, "Dump of the descriptor struct:  0x%X\n", priv->head);
 __ismt_desc_dump(dev, desc);
}
