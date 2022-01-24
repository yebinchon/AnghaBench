#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct lrw_table_ctx {int /*<<< orphan*/  table; TYPE_1__* mulinc; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ be128 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

int FUNC4(struct lrw_table_ctx *ctx, const u8 *tweak)
{
	be128 tmp = { 0 };
	int i;

	if (ctx->table)
		FUNC1(ctx->table);

	/* initialize multiplication table for Key2 */
	ctx->table = FUNC2((be128 *)tweak);
	if (!ctx->table)
		return -ENOMEM;

	/* initialize optimization table */
	for (i = 0; i < 128; i++) {
		FUNC3(&tmp, i);
		ctx->mulinc[i] = tmp;
		FUNC0(&ctx->mulinc[i], ctx->table);
	}

	return 0;
}