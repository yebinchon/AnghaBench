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
typedef  int u32 ;
struct hwsq_ucode {int dummy; } ;
struct nv50_pm_state {int mmast; int mctrl; int mcoef; struct hwsq_ucode mclk_hwsq; } ;
struct nouveau_mem_exec_func {struct nv50_pm_state* priv; int /*<<< orphan*/  dev; } ;
struct nouveau_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hwsq_ucode*,int,int) ; 
 struct nouveau_device* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct nouveau_device*,int) ; 

__attribute__((used)) static void
FUNC3(struct nouveau_mem_exec_func *exec)
{
	struct nouveau_device *device = FUNC1(exec->dev);
	struct nv50_pm_state *info = exec->priv;
	struct hwsq_ucode *hwsq = &info->mclk_hwsq;
	u32 ctrl = FUNC2(device, 0x004008);

	info->mmast = FUNC2(device, 0x00c040);
	info->mmast &= ~0xc0000000; /* get MCLK_2 from HREF */
	info->mmast |=  0x0000c000; /* use MCLK_2 as MPLL_BYPASS clock */

	FUNC0(hwsq, 0xc040, info->mmast);
	FUNC0(hwsq, 0x4008, ctrl | 0x00000200); /* bypass MPLL */
	if (info->mctrl & 0x80000000)
		FUNC0(hwsq, 0x400c, info->mcoef);
	FUNC0(hwsq, 0x4008, info->mctrl);
}