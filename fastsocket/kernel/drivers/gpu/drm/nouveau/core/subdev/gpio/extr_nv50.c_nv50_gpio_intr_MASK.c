#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  events; } ;
struct nv50_gpio_priv {TYPE_1__ base; } ;
struct nouveau_subdev {int dummy; } ;
struct TYPE_4__ {int chipset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC1 (struct nv50_gpio_priv*) ; 
 int FUNC2 (struct nv50_gpio_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_gpio_priv*,int,int) ; 

void
FUNC4(struct nouveau_subdev *subdev)
{
	struct nv50_gpio_priv *priv = (void *)subdev;
	u32 intr0, intr1 = 0;
	u32 hi, lo;
	int i;

	intr0 = FUNC2(priv, 0xe054) & FUNC2(priv, 0xe050);
	if (FUNC1(priv)->chipset >= 0x90)
		intr1 = FUNC2(priv, 0xe074) & FUNC2(priv, 0xe070);

	hi = (intr0 & 0x0000ffff) | (intr1 << 16);
	lo = (intr0 >> 16) | (intr1 & 0xffff0000);

	for (i = 0; (hi | lo) && i < 32; i++) {
		if ((hi | lo) & (1 << i))
			FUNC0(priv->base.events, i);
	}

	FUNC3(priv, 0xe054, intr0);
	if (FUNC1(priv)->chipset >= 0x90)
		FUNC3(priv, 0xe074, intr1);
}