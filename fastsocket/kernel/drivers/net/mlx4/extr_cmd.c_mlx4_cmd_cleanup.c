
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * vhcr; int vhcr_dma; } ;
struct TYPE_4__ {int hcr; int pool; } ;
struct mlx4_priv {TYPE_3__ mfunc; TYPE_1__ cmd; } ;
struct mlx4_dev {TYPE_2__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int iounmap (int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 int mlx4_is_slave (struct mlx4_dev*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int pci_pool_destroy (int ) ;

void mlx4_cmd_cleanup(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 pci_pool_destroy(priv->cmd.pool);

 if (!mlx4_is_slave(dev))
  iounmap(priv->cmd.hcr);
 if (mlx4_is_mfunc(dev))
  dma_free_coherent(&(dev->pdev->dev), PAGE_SIZE,
      priv->mfunc.vhcr, priv->mfunc.vhcr_dma);
 priv->mfunc.vhcr = ((void*)0);
}
