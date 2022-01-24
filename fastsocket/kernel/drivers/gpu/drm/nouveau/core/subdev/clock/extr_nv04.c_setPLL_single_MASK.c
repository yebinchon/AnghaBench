#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u32 ;
struct nv04_clock_priv {int dummy; } ;
struct nouveau_pll_vals {int log2P; int NM1; int M1; int N1; } ;
struct TYPE_3__ {int chip; } ;
struct TYPE_4__ {TYPE_1__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct nv04_clock_priv*) ; 
 int FUNC2 (struct nv04_clock_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv04_clock_priv*,int,int) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static void
FUNC5(struct nv04_clock_priv *priv, u32 reg,
	      struct nouveau_pll_vals *pv)
{
	int chip_version = FUNC1(priv)->version.chip;
	uint32_t oldpll = FUNC2(priv, reg);
	int oldN = (oldpll >> 8) & 0xff, oldM = oldpll & 0xff;
	uint32_t pll = (oldpll & 0xfff80000) | pv->log2P << 16 | pv->NM1;
	uint32_t saved_powerctrl_1 = 0;
	int shift_powerctrl_1 = FUNC4(chip_version, reg);

	if (oldpll == pll)
		return;	/* already set */

	if (shift_powerctrl_1 >= 0) {
		saved_powerctrl_1 = FUNC2(priv, 0x001584);
		FUNC3(priv, 0x001584,
			(saved_powerctrl_1 & ~(0xf << shift_powerctrl_1)) |
			1 << shift_powerctrl_1);
	}

	if (oldM && pv->M1 && (oldN / oldM < pv->N1 / pv->M1))
		/* upclock -- write new post divider first */
		FUNC3(priv, reg, pv->log2P << 16 | (oldpll & 0xffff));
	else
		/* downclock -- write new NM first */
		FUNC3(priv, reg, (oldpll & 0xffff0000) | pv->NM1);

	if (chip_version < 0x17 && chip_version != 0x11)
		/* wait a bit on older chips */
		FUNC0(64);
	FUNC2(priv, reg);

	/* then write the other half as well */
	FUNC3(priv, reg, pll);

	if (shift_powerctrl_1 >= 0)
		FUNC3(priv, 0x001584, saved_powerctrl_1);
}