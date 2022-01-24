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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  uevent; } ;
struct nvc0_fifo_priv {TYPE_1__ base; } ;
struct nouveau_subdev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvc0_fifo_priv*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct nvc0_fifo_priv*,char*,int) ; 
 int FUNC4 (struct nvc0_fifo_priv*,int,int,int) ; 
 int FUNC5 (struct nvc0_fifo_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvc0_fifo_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvc0_fifo_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nvc0_fifo_priv*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nvc0_fifo_priv*,int) ; 

__attribute__((used)) static void
FUNC10(struct nouveau_subdev *subdev)
{
	struct nvc0_fifo_priv *priv = (void *)subdev;
	u32 mask = FUNC5(priv, 0x002140);
	u32 stat = FUNC5(priv, 0x002100) & mask;

	if (stat & 0x00000001) {
		u32 intr = FUNC5(priv, 0x00252c);
		FUNC6(priv, "INTR 0x00000001: 0x%08x\n", intr);
		FUNC7(priv, 0x002100, 0x00000001);
		stat &= ~0x00000001;
	}

	if (stat & 0x00000100) {
		u32 intr = FUNC5(priv, 0x00254c);
		FUNC6(priv, "INTR 0x00000100: 0x%08x\n", intr);
		FUNC7(priv, 0x002100, 0x00000100);
		stat &= ~0x00000100;
	}

	if (stat & 0x00010000) {
		u32 intr = FUNC5(priv, 0x00256c);
		FUNC6(priv, "INTR 0x00010000: 0x%08x\n", intr);
		FUNC7(priv, 0x002100, 0x00010000);
		stat &= ~0x00010000;
	}

	if (stat & 0x01000000) {
		u32 intr = FUNC5(priv, 0x00258c);
		FUNC6(priv, "INTR 0x01000000: 0x%08x\n", intr);
		FUNC7(priv, 0x002100, 0x01000000);
		stat &= ~0x01000000;
	}

	if (stat & 0x10000000) {
		u32 units = FUNC5(priv, 0x00259c);
		u32 u = units;

		while (u) {
			int i = FUNC0(u) - 1;
			FUNC9(priv, i);
			u &= ~(1 << i);
		}

		FUNC7(priv, 0x00259c, units);
		stat &= ~0x10000000;
	}

	if (stat & 0x20000000) {
		u32 units = FUNC5(priv, 0x0025a0);
		u32 u = units;

		while (u) {
			int i = FUNC0(u) - 1;
			FUNC8(priv, i);
			u &= ~(1 << i);
		}

		FUNC7(priv, 0x0025a0, units);
		stat &= ~0x20000000;
	}

	if (stat & 0x40000000) {
		u32 intr0 = FUNC5(priv, 0x0025a4);
		u32 intr1 = FUNC4(priv, 0x002a00, 0x00000000, 0x00000);
		FUNC2(priv, "INTR 0x40000000: 0x%08x 0x%08x\n",
			       intr0, intr1);
		stat &= ~0x40000000;
	}

	if (stat & 0x80000000) {
		u32 intr = FUNC4(priv, 0x0025a8, 0x00000000, 0x00000000);
		FUNC1(priv->base.uevent, 0);
		FUNC2(priv, "INTR 0x80000000: 0x%08x\n", intr);
		stat &= ~0x80000000;
	}

	if (stat) {
		FUNC3(priv, "unhandled status 0x%08x\n", stat);
		FUNC7(priv, 0x002100, stat);
		FUNC7(priv, 0x002140, 0);
	}
}