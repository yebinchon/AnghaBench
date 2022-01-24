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
struct nouveau_grctx {struct nouveau_device* device; } ;
struct nouveau_device {int chipset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_grctx*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct nouveau_grctx *ctx)
{
	/* start of strand 0 */
	struct nouveau_device *device = ctx->device;
	/* SEEK */
	if (device->chipset == 0x50)
		FUNC1(ctx, 5, 0);
	else if (!FUNC0(device->chipset))
		FUNC1(ctx, 6, 0);
	else
		FUNC1(ctx, 4, 0);
	/* SEEK */
	/* the PGRAPH's internal FIFO */
	if (device->chipset == 0x50)
		FUNC1(ctx, 8*3, 0);
	else
		FUNC1(ctx, 0x100*3, 0);
	/* and another bonus slot?!? */
	FUNC1(ctx, 3, 0);
	/* and YET ANOTHER bonus slot? */
	if (FUNC0(device->chipset))
		FUNC1(ctx, 3, 0);
	/* SEEK */
	/* CTX_SWITCH: caches of gr objects bound to subchannels. 8 values, last used index */
	FUNC1(ctx, 9, 0);
	/* SEEK */
	FUNC1(ctx, 9, 0);
	/* SEEK */
	FUNC1(ctx, 9, 0);
	/* SEEK */
	FUNC1(ctx, 9, 0);
	/* SEEK */
	if (device->chipset < 0x90)
		FUNC1(ctx, 4, 0);
	/* SEEK */
	FUNC1(ctx, 2, 0);
	/* SEEK */
	FUNC1(ctx, 6*2, 0);
	FUNC1(ctx, 2, 0);
	/* SEEK */
	FUNC1(ctx, 2, 0);
	/* SEEK */
	FUNC1(ctx, 6*2, 0);
	FUNC1(ctx, 2, 0);
	/* SEEK */
	if (device->chipset == 0x50)
		FUNC1(ctx, 0x1c, 0);
	else if (device->chipset < 0xa0)
		FUNC1(ctx, 0x1e, 0);
	else
		FUNC1(ctx, 0x22, 0);
	/* SEEK */
	FUNC1(ctx, 0x15, 0);
}