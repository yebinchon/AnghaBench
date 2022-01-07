
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ismt_priv {int cmp; scalar_t__ head; int hw; int io_rng_dma; TYPE_1__* pci_dev; } ;
struct ismt_desc {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ISMT_DESC_ENTRIES ;
 int dmam_alloc_coherent (int *,int,int *,int ) ;
 int init_completion (int *) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int ismt_dev_init(struct ismt_priv *priv)
{

 priv->hw = dmam_alloc_coherent(&priv->pci_dev->dev,
           (ISMT_DESC_ENTRIES
            * sizeof(struct ismt_desc)),
           &priv->io_rng_dma,
           GFP_KERNEL);
 if (!priv->hw)
  return -ENOMEM;

 memset(priv->hw, 0, (ISMT_DESC_ENTRIES * sizeof(struct ismt_desc)));

 priv->head = 0;
 init_completion(&priv->cmp);

 return 0;
}
