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
 int /*<<< orphan*/  FUNC1 (struct nvc0_graph_priv*,int,int,int) ; 

__attribute__((used)) static void
FUNC2(struct nvc0_graph_priv *priv)
{
	int i;

	for (i = 0; FUNC0(priv)->chipset == 0xd9 && i < 4; i++) {
		FUNC1(priv, 0x90c0, 0x2700 + (i * 0x40), 0x00000000);
		FUNC1(priv, 0x90c0, 0x2720 + (i * 0x40), 0x00000000);
		FUNC1(priv, 0x90c0, 0x2704 + (i * 0x40), 0x00000000);
		FUNC1(priv, 0x90c0, 0x2724 + (i * 0x40), 0x00000000);
		FUNC1(priv, 0x90c0, 0x2708 + (i * 0x40), 0x00000000);
		FUNC1(priv, 0x90c0, 0x2728 + (i * 0x40), 0x00000000);
	}
	FUNC1(priv, 0x90c0, 0x270c, 0x00000000);
	FUNC1(priv, 0x90c0, 0x272c, 0x00000000);
	FUNC1(priv, 0x90c0, 0x274c, 0x00000000);
	FUNC1(priv, 0x90c0, 0x276c, 0x00000000);
	FUNC1(priv, 0x90c0, 0x278c, 0x00000000);
	FUNC1(priv, 0x90c0, 0x27ac, 0x00000000);
	FUNC1(priv, 0x90c0, 0x27cc, 0x00000000);
	FUNC1(priv, 0x90c0, 0x27ec, 0x00000000);
	for (i = 0; FUNC0(priv)->chipset == 0xd9 && i < 4; i++) {
		FUNC1(priv, 0x90c0, 0x2710 + (i * 0x40), 0x00014000);
		FUNC1(priv, 0x90c0, 0x2730 + (i * 0x40), 0x00014000);
		FUNC1(priv, 0x90c0, 0x2714 + (i * 0x40), 0x00000040);
		FUNC1(priv, 0x90c0, 0x2734 + (i * 0x40), 0x00000040);
	}
	FUNC1(priv, 0x90c0, 0x030c, 0x00000001);
	FUNC1(priv, 0x90c0, 0x1944, 0x00000000);
	FUNC1(priv, 0x90c0, 0x0758, 0x00000100);
	FUNC1(priv, 0x90c0, 0x02c4, 0x00000000);
	FUNC1(priv, 0x90c0, 0x0790, 0x00000000);
	FUNC1(priv, 0x90c0, 0x0794, 0x00000000);
	FUNC1(priv, 0x90c0, 0x0798, 0x00000000);
	FUNC1(priv, 0x90c0, 0x079c, 0x00000000);
	FUNC1(priv, 0x90c0, 0x07a0, 0x00000000);
	FUNC1(priv, 0x90c0, 0x077c, 0x00000000);
	FUNC1(priv, 0x90c0, 0x0204, 0x00000000);
	FUNC1(priv, 0x90c0, 0x0208, 0x00000000);
	FUNC1(priv, 0x90c0, 0x020c, 0x00000000);
	FUNC1(priv, 0x90c0, 0x0214, 0x00000000);
	FUNC1(priv, 0x90c0, 0x024c, 0x00000000);
	FUNC1(priv, 0x90c0, 0x0d94, 0x00000001);
	FUNC1(priv, 0x90c0, 0x1608, 0x00000000);
	FUNC1(priv, 0x90c0, 0x160c, 0x00000000);
	FUNC1(priv, 0x90c0, 0x1664, 0x00000000);
}