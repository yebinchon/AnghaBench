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
typedef  int /*<<< orphan*/  u32 ;
struct nvbios_init {int /*<<< orphan*/  bios; } ;
struct nouveau_clock {int (* pll_set ) (struct nouveau_clock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvbios_init*) ; 
 struct nouveau_clock* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nouveau_clock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct nvbios_init *init, u32 id, u32 freq)
{
	struct nouveau_clock *clk = FUNC1(init->bios);
	if (clk && clk->pll_set && FUNC0(init)) {
		int ret = clk->pll_set(clk, id, freq);
		if (ret)
			FUNC3("failed to prog pll 0x%08x to %dkHz\n", id, freq);
	}
}