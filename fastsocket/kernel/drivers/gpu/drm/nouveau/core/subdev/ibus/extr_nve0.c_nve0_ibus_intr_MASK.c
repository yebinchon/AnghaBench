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
struct nve0_ibus_priv {int dummy; } ;
struct nouveau_subdev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nve0_ibus_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nve0_ibus_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nve0_ibus_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nve0_ibus_priv*,int) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_subdev *subdev)
{
	struct nve0_ibus_priv *priv = (void *)subdev;
	u32 intr0 = FUNC0(priv, 0x120058);
	u32 intr1 = FUNC0(priv, 0x12005c);
	u32 hubnr = FUNC0(priv, 0x120070);
	u32 ropnr = FUNC0(priv, 0x120074);
	u32 gpcnr = FUNC0(priv, 0x120078);
	u32 i;

	for (i = 0; (intr0 & 0x0000ff00) && i < hubnr; i++) {
		u32 stat = 0x00000100 << i;
		if (intr0 & stat) {
			FUNC2(priv, i);
			intr0 &= ~stat;
		}
	}

	for (i = 0; (intr0 & 0xffff0000) && i < ropnr; i++) {
		u32 stat = 0x00010000 << i;
		if (intr0 & stat) {
			FUNC3(priv, i);
			intr0 &= ~stat;
		}
	}

	for (i = 0; intr1 && i < gpcnr; i++) {
		u32 stat = 0x00000001 << i;
		if (intr1 & stat) {
			FUNC1(priv, i);
			intr1 &= ~stat;
		}
	}
}