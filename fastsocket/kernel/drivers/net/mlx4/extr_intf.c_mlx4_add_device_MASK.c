#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx4_priv {int /*<<< orphan*/  ctx_lock; int /*<<< orphan*/  ctx_list; int /*<<< orphan*/  dev; } ;
struct mlx4_interface {scalar_t__ (* add ) (int /*<<< orphan*/ *) ;} ;
struct mlx4_device_context {int /*<<< orphan*/  list; scalar_t__ context; struct mlx4_interface* intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_device_context*) ; 
 struct mlx4_device_context* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mlx4_interface *intf, struct mlx4_priv *priv)
{
	struct mlx4_device_context *dev_ctx;

	dev_ctx = FUNC1(sizeof *dev_ctx, GFP_KERNEL);
	if (!dev_ctx)
		return;

	dev_ctx->intf    = intf;
	dev_ctx->context = intf->add(&priv->dev);

	if (dev_ctx->context) {
		FUNC3(&priv->ctx_lock);
		FUNC2(&dev_ctx->list, &priv->ctx_list);
		FUNC4(&priv->ctx_lock);
	} else
		FUNC0(dev_ctx);
}