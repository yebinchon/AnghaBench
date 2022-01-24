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

	FUNC1(priv, 0x4064a8, 0x00000000);
	FUNC1(priv, 0x4064ac, 0x00003fff);
	FUNC1(priv, 0x4064b4, 0x00000000);
	FUNC1(priv, 0x4064b8, 0x00000000);
	if (FUNC0(priv)->chipset == 0xd9)
		FUNC1(priv, 0x4064bc, 0x00000000);
	if (FUNC0(priv)->chipset == 0xc1 ||
	    FUNC0(priv)->chipset == 0xd9) {
		FUNC1(priv, 0x4064c0, 0x80140078);
		FUNC1(priv, 0x4064c4, 0x0086ffff);
	}
}