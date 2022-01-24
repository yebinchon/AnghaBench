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
struct nvc0_ltcg_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvc0_ltcg_priv*,char*,int,int,int) ; 
 int FUNC1 (struct nvc0_ltcg_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvc0_ltcg_priv*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct nvc0_ltcg_priv *priv, int unit, int subp)
{
	u32 subp_base = 0x141000 + (unit * 0x2000) + (subp * 0x400);
	u32 stat = FUNC1(priv, subp_base + 0x020);

	if (stat) {
		FUNC0(priv, "LTC%d_LTS%d: 0x%08x\n", unit, subp, stat);
		FUNC2(priv, subp_base + 0x020, stat);
	}
}