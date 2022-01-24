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
struct nve0_fifo_priv {TYPE_1__ base; } ;
struct nouveau_subdev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nve0_fifo_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nve0_fifo_priv*,int,int,int) ; 
 int FUNC4 (struct nve0_fifo_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nve0_fifo_priv*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct nve0_fifo_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nve0_fifo_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nve0_fifo_priv*,int) ; 

__attribute__((used)) static void
FUNC9(struct nouveau_subdev *subdev)
{
	struct nve0_fifo_priv *priv = (void *)subdev;
	u32 mask = FUNC4(priv, 0x002140);
	u32 stat = FUNC4(priv, 0x002100) & mask;

	if (stat & 0x00000100) {
		FUNC5(priv, "unknown status 0x00000100\n");
		FUNC6(priv, 0x002100, 0x00000100);
		stat &= ~0x00000100;
	}

	if (stat & 0x10000000) {
		u32 units = FUNC4(priv, 0x00259c);
		u32 u = units;

		while (u) {
			int i = FUNC0(u) - 1;
			FUNC8(priv, i);
			u &= ~(1 << i);
		}

		FUNC6(priv, 0x00259c, units);
		stat &= ~0x10000000;
	}

	if (stat & 0x20000000) {
		u32 units = FUNC4(priv, 0x0025a0);
		u32 u = units;

		while (u) {
			int i = FUNC0(u) - 1;
			FUNC7(priv, i);
			u &= ~(1 << i);
		}

		FUNC6(priv, 0x0025a0, units);
		stat &= ~0x20000000;
	}

	if (stat & 0x40000000) {
		FUNC5(priv, "unknown status 0x40000000\n");
		FUNC3(priv, 0x002a00, 0x00000000, 0x00000000);
		stat &= ~0x40000000;
	}

	if (stat & 0x80000000) {
		FUNC1(priv->base.uevent, 0);
		FUNC6(priv, 0x002100, 0x80000000);
		stat &= ~0x80000000;
	}

	if (stat) {
		FUNC2(priv, "unhandled status 0x%08x\n", stat);
		FUNC6(priv, 0x002100, stat);
		FUNC6(priv, 0x002140, 0);
	}
}