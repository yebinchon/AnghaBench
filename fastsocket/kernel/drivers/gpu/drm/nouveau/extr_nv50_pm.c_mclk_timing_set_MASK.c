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
struct hwsq_ucode {int dummy; } ;
struct nv50_pm_state {struct hwsq_ucode mclk_hwsq; struct nouveau_pm_level* perflvl; } ;
struct TYPE_2__ {int* reg; } ;
struct nouveau_pm_level {TYPE_1__ timing; } ;
struct nouveau_mem_exec_func {struct nv50_pm_state* priv; int /*<<< orphan*/  dev; } ;
struct nouveau_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hwsq_ucode*,int,int) ; 
 struct nouveau_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nouveau_device*,int) ; 

__attribute__((used)) static void
FUNC3(struct nouveau_mem_exec_func *exec)
{
	struct nouveau_device *device = FUNC1(exec->dev);
	struct nv50_pm_state *info = exec->priv;
	struct nouveau_pm_level *perflvl = info->perflvl;
	struct hwsq_ucode *hwsq = &info->mclk_hwsq;
	int i;

	for (i = 0; i < 9; i++) {
		u32 reg = 0x100220 + (i * 4);
		u32 val = FUNC2(device, reg);
		if (val != perflvl->timing.reg[i])
			FUNC0(hwsq, reg, perflvl->timing.reg[i]);
	}
}