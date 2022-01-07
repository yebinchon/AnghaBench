
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int toggle; int * hcr; int pool; scalar_t__ use_events; int poll_sem; int slave_cmd_mutex; int hcr_mutex; } ;
struct TYPE_5__ {int * vhcr; int vhcr_dma; } ;
struct mlx4_priv {TYPE_2__ cmd; TYPE_1__ mfunc; } ;
struct mlx4_dev {TYPE_3__* pdev; } ;
struct TYPE_7__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MLX4_HCR_BASE ;
 int MLX4_HCR_SIZE ;
 int MLX4_MAILBOX_SIZE ;
 int PAGE_SIZE ;
 int * dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int * ioremap (scalar_t__,int ) ;
 int iounmap (int *) ;
 int mlx4_err (struct mlx4_dev*,char*) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 int mlx4_is_slave (struct mlx4_dev*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mutex_init (int *) ;
 int pci_pool_create (char*,TYPE_3__*,int ,int ,int ) ;
 scalar_t__ pci_resource_start (TYPE_3__*,int ) ;
 int sema_init (int *,int) ;

int mlx4_cmd_init(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 mutex_init(&priv->cmd.hcr_mutex);
 mutex_init(&priv->cmd.slave_cmd_mutex);
 sema_init(&priv->cmd.poll_sem, 1);
 priv->cmd.use_events = 0;
 priv->cmd.toggle = 1;

 priv->cmd.hcr = ((void*)0);
 priv->mfunc.vhcr = ((void*)0);

 if (!mlx4_is_slave(dev)) {
  priv->cmd.hcr = ioremap(pci_resource_start(dev->pdev, 0) +
     MLX4_HCR_BASE, MLX4_HCR_SIZE);
  if (!priv->cmd.hcr) {
   mlx4_err(dev, "Couldn't map command register.\n");
   return -ENOMEM;
  }
 }

 if (mlx4_is_mfunc(dev)) {
  priv->mfunc.vhcr = dma_alloc_coherent(&(dev->pdev->dev), PAGE_SIZE,
            &priv->mfunc.vhcr_dma,
            GFP_KERNEL);
  if (!priv->mfunc.vhcr) {
   mlx4_err(dev, "Couldn't allocate VHCR.\n");
   goto err_hcr;
  }
 }

 priv->cmd.pool = pci_pool_create("mlx4_cmd", dev->pdev,
      MLX4_MAILBOX_SIZE,
      MLX4_MAILBOX_SIZE, 0);
 if (!priv->cmd.pool)
  goto err_vhcr;

 return 0;

err_vhcr:
 if (mlx4_is_mfunc(dev))
  dma_free_coherent(&(dev->pdev->dev), PAGE_SIZE,
      priv->mfunc.vhcr, priv->mfunc.vhcr_dma);
 priv->mfunc.vhcr = ((void*)0);

err_hcr:
 if (!mlx4_is_slave(dev))
  iounmap(priv->cmd.hcr);
 return -ENOMEM;
}
