#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uld_ctx {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ qpcnt; scalar_t__ db_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  qpidr; } ;

/* Variables and functions */
 scalar_t__ FLOW_CONTROL ; 
 scalar_t__ NORMAL ; 
 scalar_t__ db_fc_threshold ; 
 int /*<<< orphan*/  enable_qp_db ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct uld_ctx *ctx)
{
	FUNC1(&ctx->dev->lock);
	if (ctx->dev->qpcnt <= db_fc_threshold &&
	    ctx->dev->db_state == FLOW_CONTROL) {
		ctx->dev->db_state = NORMAL;
		FUNC0(&ctx->dev->qpidr, enable_qp_db, NULL);
	}
	FUNC2(&ctx->dev->lock);
}