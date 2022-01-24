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
struct nvc0_graph_priv {int dummy; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvc0_graph_priv*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct nvc0_graph_priv *priv)
{

	if (FUNC0(priv)->chipset == 0xd9) {
		FUNC1(priv, 0x405800, 0x0f8000bf);
		FUNC1(priv, 0x405830, 0x02180218);
		FUNC1(priv, 0x405834, 0x08000000);
	} else
	if (FUNC0(priv)->chipset == 0xc1) {
		FUNC1(priv, 0x405800, 0x0f8000bf);
		FUNC1(priv, 0x405830, 0x02180218);
		FUNC1(priv, 0x405834, 0x00000000);
	} else {
		FUNC1(priv, 0x405800, 0x078000bf);
		FUNC1(priv, 0x405830, 0x02180000);
		FUNC1(priv, 0x405834, 0x00000000);
	}
	FUNC1(priv, 0x405838, 0x00000000);
	FUNC1(priv, 0x405854, 0x00000000);
	FUNC1(priv, 0x405870, 0x00000001);
	FUNC1(priv, 0x405874, 0x00000001);
	FUNC1(priv, 0x405878, 0x00000001);
	FUNC1(priv, 0x40587c, 0x00000001);
	FUNC1(priv, 0x405a00, 0x00000000);
	FUNC1(priv, 0x405a04, 0x00000000);
	FUNC1(priv, 0x405a18, 0x00000000);
}