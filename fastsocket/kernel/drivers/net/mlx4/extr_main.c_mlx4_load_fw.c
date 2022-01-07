
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fw_icm; int fw_pages; } ;
struct mlx4_priv {TYPE_1__ fw; } ;
struct mlx4_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_HIGHUSER ;
 int __GFP_NOWARN ;
 int mlx4_MAP_FA (struct mlx4_dev*,int ) ;
 int mlx4_RUN_FW (struct mlx4_dev*) ;
 int mlx4_UNMAP_FA (struct mlx4_dev*) ;
 int mlx4_alloc_icm (struct mlx4_dev*,int ,int,int ) ;
 int mlx4_err (struct mlx4_dev*,char*) ;
 int mlx4_free_icm (struct mlx4_dev*,int ,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

__attribute__((used)) static int mlx4_load_fw(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int err;

 priv->fw.fw_icm = mlx4_alloc_icm(dev, priv->fw.fw_pages,
      GFP_HIGHUSER | __GFP_NOWARN, 0);
 if (!priv->fw.fw_icm) {
  mlx4_err(dev, "Couldn't allocate FW area, aborting.\n");
  return -ENOMEM;
 }

 err = mlx4_MAP_FA(dev, priv->fw.fw_icm);
 if (err) {
  mlx4_err(dev, "MAP_FA command failed, aborting.\n");
  goto err_free;
 }

 err = mlx4_RUN_FW(dev);
 if (err) {
  mlx4_err(dev, "RUN_FW command failed, aborting.\n");
  goto err_unmap_fa;
 }

 return 0;

err_unmap_fa:
 mlx4_UNMAP_FA(dev);

err_free:
 mlx4_free_icm(dev, priv->fw.fw_icm, 0);
 return err;
}
