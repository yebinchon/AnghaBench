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
struct nv50_disp_priv {int dummy; } ;
struct nouveau_clock {int /*<<< orphan*/  (* pll_set ) (struct nouveau_clock*,scalar_t__,int) ;} ;

/* Variables and functions */
 scalar_t__ PLL_VPLL0 ; 
 struct nouveau_clock* FUNC0 (struct nv50_disp_priv*) ; 
 int FUNC1 (struct nv50_disp_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_clock*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3(struct nv50_disp_priv *priv, int head)
{
	struct nouveau_clock *clk = FUNC0(priv);
	u32 pclk = FUNC1(priv, 0x610ad0 + (head * 0x540)) & 0x3fffff;
	if (pclk)
		clk->pll_set(clk, PLL_VPLL0 + head, pclk);
}