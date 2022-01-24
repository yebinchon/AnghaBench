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
typedef  int /*<<< orphan*/  uint32_t ;
struct atom_context {int /*<<< orphan*/  mutex; int /*<<< orphan*/  io_mode; scalar_t__ fb_base; scalar_t__ reg_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_IO_MM ; 
 int FUNC0 (struct atom_context*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct atom_context *ctx, int index, uint32_t * params)
{
	int r;

	FUNC1(&ctx->mutex);
	/* reset reg block */
	ctx->reg_block = 0;
	/* reset fb window */
	ctx->fb_base = 0;
	/* reset io mode */
	ctx->io_mode = ATOM_IO_MM;
	r = FUNC0(ctx, index, params);
	FUNC2(&ctx->mutex);
	return r;
}