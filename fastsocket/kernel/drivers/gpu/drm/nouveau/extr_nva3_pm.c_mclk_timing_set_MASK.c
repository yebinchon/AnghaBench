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
struct nva3_pm_state {int* ramcfg; struct nouveau_pm_level* perflvl; } ;
struct TYPE_2__ {int* reg; } ;
struct nouveau_pm_level {TYPE_1__ timing; } ;
struct nouveau_mem_exec_func {struct nva3_pm_state* priv; int /*<<< orphan*/  dev; } ;
struct nouveau_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_device*,int,int,int) ; 
 int FUNC2 (struct nouveau_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_device*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_mem_exec_func *exec)
{
	struct nouveau_device *device = FUNC0(exec->dev);
	struct nva3_pm_state *info = exec->priv;
	struct nouveau_pm_level *perflvl = info->perflvl;
	int i;

	for (i = 0; i < 9; i++)
		FUNC3(device, 0x100220 + (i * 4), perflvl->timing.reg[i]);

	if (info->ramcfg) {
		u32 data = (info->ramcfg[2] & 0x08) ? 0x00000000 : 0x00001000;
		FUNC1(device, 0x100200, 0x00001000, data);
	}

	if (info->ramcfg) {
		u32 unk714 = FUNC2(device, 0x100714) & ~0xf0000010;
		u32 unk718 = FUNC2(device, 0x100718) & ~0x00000100;
		u32 unk71c = FUNC2(device, 0x10071c) & ~0x00000100;
		if ( (info->ramcfg[2] & 0x20))
			unk714 |= 0xf0000000;
		if (!(info->ramcfg[2] & 0x04))
			unk714 |= 0x00000010;
		FUNC3(device, 0x100714, unk714);

		if (info->ramcfg[2] & 0x01)
			unk71c |= 0x00000100;
		FUNC3(device, 0x10071c, unk71c);

		if (info->ramcfg[2] & 0x02)
			unk718 |= 0x00000100;
		FUNC3(device, 0x100718, unk718);

		if (info->ramcfg[2] & 0x10)
			FUNC3(device, 0x111100, 0x48000000); /*XXX*/
	}
}