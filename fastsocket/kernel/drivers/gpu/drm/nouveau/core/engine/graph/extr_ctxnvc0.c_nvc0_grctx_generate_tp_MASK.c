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
	int chipset = FUNC0(priv)->chipset;

	/* GPC_BROADCAST.TP_BROADCAST */
	FUNC1(priv, 0x419818, 0x00000000);
	FUNC1(priv, 0x41983c, 0x00038bc7);
	FUNC1(priv, 0x419848, 0x00000000);
	if (chipset == 0xc1 || chipset == 0xd9)
		FUNC1(priv, 0x419864, 0x00000129);
	else
		FUNC1(priv, 0x419864, 0x0000012a);
	FUNC1(priv, 0x419888, 0x00000000);
	FUNC1(priv, 0x419a00, 0x000001f0);
	FUNC1(priv, 0x419a04, 0x00000001);
	FUNC1(priv, 0x419a08, 0x00000023);
	FUNC1(priv, 0x419a0c, 0x00020000);
	FUNC1(priv, 0x419a10, 0x00000000);
	FUNC1(priv, 0x419a14, 0x00000200);
	FUNC1(priv, 0x419a1c, 0x00000000);
	FUNC1(priv, 0x419a20, 0x00000800);
	if (chipset == 0xd9)
		FUNC1(priv, 0x00419ac4, 0x0017f440);
	else if (chipset != 0xc0 && chipset != 0xc8)
		FUNC1(priv, 0x00419ac4, 0x0007f440);
	FUNC1(priv, 0x419b00, 0x0a418820);
	FUNC1(priv, 0x419b04, 0x062080e6);
	FUNC1(priv, 0x419b08, 0x020398a4);
	FUNC1(priv, 0x419b0c, 0x0e629062);
	FUNC1(priv, 0x419b10, 0x0a418820);
	FUNC1(priv, 0x419b14, 0x000000e6);
	FUNC1(priv, 0x419bd0, 0x00900103);
	if (chipset == 0xc1 || chipset == 0xd9)
		FUNC1(priv, 0x419be0, 0x00400001);
	else
		FUNC1(priv, 0x419be0, 0x00000001);
	FUNC1(priv, 0x419be4, 0x00000000);
	FUNC1(priv, 0x419c00, chipset != 0xd9 ? 0x00000002 : 0x0000000a);
	FUNC1(priv, 0x419c04, 0x00000006);
	FUNC1(priv, 0x419c08, 0x00000002);
	FUNC1(priv, 0x419c20, 0x00000000);
	if (FUNC0(priv)->chipset == 0xd9) {
		FUNC1(priv, 0x419c24, 0x00084210);
		FUNC1(priv, 0x419c28, 0x3cf3cf3c);
		FUNC1(priv, 0x419cb0, 0x00020048);
	} else
	if (chipset == 0xce || chipset == 0xcf) {
		FUNC1(priv, 0x419cb0, 0x00020048);
	} else {
		FUNC1(priv, 0x419cb0, 0x00060048);
	}
	FUNC1(priv, 0x419ce8, 0x00000000);
	FUNC1(priv, 0x419cf4, 0x00000183);
	if (chipset == 0xc1 || chipset == 0xd9)
		FUNC1(priv, 0x419d20, 0x12180000);
	else
		FUNC1(priv, 0x419d20, 0x02180000);
	FUNC1(priv, 0x419d24, 0x00001fff);
	if (chipset == 0xc1 || chipset == 0xd9)
		FUNC1(priv, 0x419d44, 0x02180218);
	FUNC1(priv, 0x419e04, 0x00000000);
	FUNC1(priv, 0x419e08, 0x00000000);
	FUNC1(priv, 0x419e0c, 0x00000000);
	FUNC1(priv, 0x419e10, 0x00000002);
	FUNC1(priv, 0x419e44, 0x001beff2);
	FUNC1(priv, 0x419e48, 0x00000000);
	FUNC1(priv, 0x419e4c, 0x0000000f);
	FUNC1(priv, 0x419e50, 0x00000000);
	FUNC1(priv, 0x419e54, 0x00000000);
	FUNC1(priv, 0x419e58, 0x00000000);
	FUNC1(priv, 0x419e5c, 0x00000000);
	FUNC1(priv, 0x419e60, 0x00000000);
	FUNC1(priv, 0x419e64, 0x00000000);
	FUNC1(priv, 0x419e68, 0x00000000);
	FUNC1(priv, 0x419e6c, 0x00000000);
	FUNC1(priv, 0x419e70, 0x00000000);
	FUNC1(priv, 0x419e74, 0x00000000);
	FUNC1(priv, 0x419e78, 0x00000000);
	FUNC1(priv, 0x419e7c, 0x00000000);
	FUNC1(priv, 0x419e80, 0x00000000);
	FUNC1(priv, 0x419e84, 0x00000000);
	FUNC1(priv, 0x419e88, 0x00000000);
	FUNC1(priv, 0x419e8c, 0x00000000);
	FUNC1(priv, 0x419e90, 0x00000000);
	FUNC1(priv, 0x419e98, 0x00000000);
	if (chipset != 0xc0 && chipset != 0xc8)
		FUNC1(priv, 0x419ee0, 0x00011110);
	FUNC1(priv, 0x419f50, 0x00000000);
	FUNC1(priv, 0x419f54, 0x00000000);
	if (chipset != 0xc0 && chipset != 0xc8)
		FUNC1(priv, 0x419f58, 0x00000000);
}