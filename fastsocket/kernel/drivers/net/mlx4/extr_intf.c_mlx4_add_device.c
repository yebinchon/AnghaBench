
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_priv {int ctx_lock; int ctx_list; int dev; } ;
struct mlx4_interface {scalar_t__ (* add ) (int *) ;} ;
struct mlx4_device_context {int list; scalar_t__ context; struct mlx4_interface* intf; } ;


 int GFP_KERNEL ;
 int kfree (struct mlx4_device_context*) ;
 struct mlx4_device_context* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ stub1 (int *) ;

__attribute__((used)) static void mlx4_add_device(struct mlx4_interface *intf, struct mlx4_priv *priv)
{
 struct mlx4_device_context *dev_ctx;

 dev_ctx = kmalloc(sizeof *dev_ctx, GFP_KERNEL);
 if (!dev_ctx)
  return;

 dev_ctx->intf = intf;
 dev_ctx->context = intf->add(&priv->dev);

 if (dev_ctx->context) {
  spin_lock_irq(&priv->ctx_lock);
  list_add_tail(&dev_ctx->list, &priv->ctx_list);
  spin_unlock_irq(&priv->ctx_lock);
 } else
  kfree(dev_ctx);
}
