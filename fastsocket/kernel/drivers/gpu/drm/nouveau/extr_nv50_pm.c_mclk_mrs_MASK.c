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
typedef  int /*<<< orphan*/  u32 ;
struct hwsq_ucode {int dummy; } ;
struct nv50_pm_state {struct hwsq_ucode mclk_hwsq; } ;
struct nouveau_mem_exec_func {struct nv50_pm_state* priv; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int ranks; } ;
struct nouveau_fb {TYPE_1__ ram; } ;
struct nouveau_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hwsq_ucode*,int,int /*<<< orphan*/ ) ; 
 struct nouveau_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct nouveau_fb* FUNC2 (struct nouveau_device*) ; 

__attribute__((used)) static void
FUNC3(struct nouveau_mem_exec_func *exec, int mr, u32 data)
{
	struct nouveau_device *device = FUNC1(exec->dev);
	struct nouveau_fb *pfb = FUNC2(device);
	struct nv50_pm_state *info = exec->priv;
	struct hwsq_ucode *hwsq = &info->mclk_hwsq;

	if (mr <= 1) {
		if (pfb->ram.ranks > 1)
			FUNC0(hwsq, 0x1002c8 + ((mr - 0) * 4), data);
		FUNC0(hwsq, 0x1002c0 + ((mr - 0) * 4), data);
	} else
	if (mr <= 3) {
		if (pfb->ram.ranks > 1)
			FUNC0(hwsq, 0x1002e8 + ((mr - 2) * 4), data);
		FUNC0(hwsq, 0x1002e0 + ((mr - 2) * 4), data);
	}
}