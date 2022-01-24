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
typedef  int u32 ;
struct TYPE_2__ {int coef; } ;
struct nvc0_pm_state {TYPE_1__ mem; } ;
struct nouveau_mem_exec_func {struct nvc0_pm_state* priv; int /*<<< orphan*/  dev; } ;
struct nouveau_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nouveau_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_device*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_mem_exec_func *exec)
{
	struct nouveau_device *device = FUNC0(exec->dev);
	struct nvc0_pm_state *info = exec->priv;
	u32 ctrl = FUNC1(device, 0x132000);

	FUNC3(device, 0x137360, 0x00000001);
	FUNC3(device, 0x137370, 0x00000000);
	FUNC3(device, 0x137380, 0x00000000);
	if (ctrl & 0x00000001)
		FUNC3(device, 0x132000, (ctrl &= ~0x00000001));

	FUNC3(device, 0x132004, info->mem.coef);
	FUNC3(device, 0x132000, (ctrl |= 0x00000001));
	FUNC2(device, 0x137390, 0x00000002, 0x00000002);
	FUNC3(device, 0x132018, 0x00005000);

	FUNC3(device, 0x137370, 0x00000001);
	FUNC3(device, 0x137380, 0x00000001);
	FUNC3(device, 0x137360, 0x00000000);
}