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
 int /*<<< orphan*/  FUNC0 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_grctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_grctx*) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_grctx *ctx)
{
	struct nouveau_device *device = ctx->device;
	if (device->chipset < 0xa0) {
		FUNC2(ctx);
		FUNC1(ctx);
		FUNC0(ctx);
		FUNC3(ctx);
	} else {
		FUNC0(ctx);
		FUNC1(ctx);
		FUNC3(ctx);
		FUNC2(ctx);
	}
}