#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx4_ib_dev {TYPE_2__* dev; int /*<<< orphan*/  ib_dev; } ;
struct mlx4_ib_demux_pv_ctx {int dummy; } ;
struct mlx4_ib_demux_ctx {int port; int /*<<< orphan*/ * tun; int /*<<< orphan*/ * wq; void* ud_wq; int /*<<< orphan*/ * ib_dev; struct mlx4_ib_dev* dev; } ;
struct TYPE_3__ {int sqp_demux; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct mlx4_ib_dev*,int,int,int /*<<< orphan*/ *) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_ib_dev*,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_ib_demux_ctx*,int) ; 
 int FUNC7 (struct mlx4_ib_demux_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC10(struct mlx4_ib_dev *dev,
				       struct mlx4_ib_demux_ctx *ctx,
				       int port)
{
	char name[12];
	int ret = 0;
	int i;

	ctx->tun = FUNC4(dev->dev->caps.sqp_demux,
			   sizeof (struct mlx4_ib_demux_pv_ctx *), GFP_KERNEL);
	if (!ctx->tun)
		return -ENOMEM;

	ctx->dev = dev;
	ctx->port = port;
	ctx->ib_dev = &dev->ib_dev;

	for (i = 0; i < dev->dev->caps.sqp_demux; i++) {
		ret = FUNC0(dev, i, port, &ctx->tun[i]);
		if (ret) {
			ret = -ENOMEM;
			goto err_mcg;
		}
	}

	ret = FUNC7(ctx);
	if (ret) {
		FUNC8("Failed initializing mcg para-virt (%d)\n", ret);
		goto err_mcg;
	}

	FUNC9(name, sizeof name, "mlx4_ibt%d", port);
	ctx->wq = FUNC1(name);
	if (!ctx->wq) {
		FUNC8("Failed to create tunnelling WQ for port %d\n", port);
		ret = -ENOMEM;
		goto err_wq;
	}

	FUNC9(name, sizeof name, "mlx4_ibud%d", port);
	ctx->ud_wq = FUNC1(name);
	if (!ctx->ud_wq) {
		FUNC8("Failed to create up/down WQ for port %d\n", port);
		ret = -ENOMEM;
		goto err_udwq;
	}

	return 0;

err_udwq:
	FUNC2(ctx->wq);
	ctx->wq = NULL;

err_wq:
	FUNC6(ctx, 1);
err_mcg:
	for (i = 0; i < dev->dev->caps.sqp_demux; i++)
		FUNC3(dev, i, port);
	FUNC5(ctx->tun);
	ctx->tun = NULL;
	return ret;
}