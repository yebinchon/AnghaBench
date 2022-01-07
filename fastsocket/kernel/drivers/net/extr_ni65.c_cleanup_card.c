
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {size_t cardno; } ;
struct net_device {int base_addr; int dma; struct priv* ml_priv; } ;
struct TYPE_2__ {int total_size; } ;


 TYPE_1__* cards ;
 int disable_dma (int ) ;
 int free_dma (int ) ;
 int ni65_free_buffer (struct priv*) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void cleanup_card(struct net_device *dev)
{
 struct priv *p = dev->ml_priv;
 disable_dma(dev->dma);
 free_dma(dev->dma);
 release_region(dev->base_addr, cards[p->cardno].total_size);
 ni65_free_buffer(p);
}
