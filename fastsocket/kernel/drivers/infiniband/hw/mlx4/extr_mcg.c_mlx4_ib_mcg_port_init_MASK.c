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
struct mlx4_ib_demux_ctx {int port; scalar_t__ flushing; int /*<<< orphan*/  mcg_mgid0_list; int /*<<< orphan*/  mcg_table; int /*<<< orphan*/  mcg_table_lock; int /*<<< orphan*/  mcg_wq; int /*<<< orphan*/  tid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

int FUNC5(struct mlx4_ib_demux_ctx *ctx)
{
	char name[20];

	FUNC1(&ctx->tid, 0);
	FUNC4(name, "mlx4_ib_mcg%d", ctx->port);
	ctx->mcg_wq = FUNC2(name);
	if (!ctx->mcg_wq)
		return -ENOMEM;

	FUNC3(&ctx->mcg_table_lock);
	ctx->mcg_table = RB_ROOT;
	FUNC0(&ctx->mcg_mgid0_list);
	ctx->flushing = 0;

	return 0;
}