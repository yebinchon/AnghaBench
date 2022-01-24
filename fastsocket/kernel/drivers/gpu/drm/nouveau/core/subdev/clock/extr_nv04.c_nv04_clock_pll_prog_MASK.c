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
typedef  int u32 ;
struct nv04_clock_priv {int dummy; } ;
struct nouveau_pll_vals {int dummy; } ;
struct nouveau_clock {int dummy; } ;
struct TYPE_3__ {int chip; } ;
struct TYPE_4__ {TYPE_1__ version; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct nouveau_clock*) ; 
 int /*<<< orphan*/  FUNC1 (struct nv04_clock_priv*,int,struct nouveau_pll_vals*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv04_clock_priv*,int,struct nouveau_pll_vals*) ; 
 int /*<<< orphan*/  FUNC3 (struct nv04_clock_priv*,int,struct nouveau_pll_vals*) ; 

int
FUNC4(struct nouveau_clock *clk, u32 reg1,
		    struct nouveau_pll_vals *pv)
{
	struct nv04_clock_priv *priv = (void *)clk;
	int cv = FUNC0(clk)->version.chip;

	if (cv == 0x30 || cv == 0x31 || cv == 0x35 || cv == 0x36 ||
	    cv >= 0x40) {
		if (reg1 > 0x405c)
			FUNC1(priv, reg1, pv);
		else
			FUNC2(priv, reg1, pv);
	} else
		FUNC3(priv, reg1, pv);

	return 0;
}