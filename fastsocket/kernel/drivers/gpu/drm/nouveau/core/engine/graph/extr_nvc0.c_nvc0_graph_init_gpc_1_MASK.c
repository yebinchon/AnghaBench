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
struct nvc0_graph_priv {int gpc_nr; int* tpc_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvc0_graph_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct nvc0_graph_priv *priv)
{
	int gpc, tpc;

	for (gpc = 0; gpc < priv->gpc_nr; gpc++) {
		FUNC2(priv, FUNC0(gpc, 0x0420), 0xc0000000);
		FUNC2(priv, FUNC0(gpc, 0x0900), 0xc0000000);
		FUNC2(priv, FUNC0(gpc, 0x1028), 0xc0000000);
		FUNC2(priv, FUNC0(gpc, 0x0824), 0xc0000000);
		for (tpc = 0; tpc < priv->tpc_nr[gpc]; tpc++) {
			FUNC2(priv, FUNC1(gpc, tpc, 0x508), 0xffffffff);
			FUNC2(priv, FUNC1(gpc, tpc, 0x50c), 0xffffffff);
			FUNC2(priv, FUNC1(gpc, tpc, 0x224), 0xc0000000);
			FUNC2(priv, FUNC1(gpc, tpc, 0x48c), 0xc0000000);
			FUNC2(priv, FUNC1(gpc, tpc, 0x084), 0xc0000000);
			FUNC2(priv, FUNC1(gpc, tpc, 0x644), 0x001ffffe);
			FUNC2(priv, FUNC1(gpc, tpc, 0x64c), 0x0000000f);
		}
		FUNC2(priv, FUNC0(gpc, 0x2c90), 0xffffffff);
		FUNC2(priv, FUNC0(gpc, 0x2c94), 0xffffffff);
	}
}