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
struct TYPE_2__ {int /*<<< orphan*/  events; } ;
struct nve0_gpio_priv {TYPE_1__ base; } ;
struct nouveau_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct nve0_gpio_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nve0_gpio_priv*,int,int) ; 

void
FUNC3(struct nouveau_subdev *subdev)
{
	struct nve0_gpio_priv *priv = (void *)subdev;
	u32 intr0 = FUNC1(priv, 0xdc00) & FUNC1(priv, 0xdc08);
	u32 intr1 = FUNC1(priv, 0xdc80) & FUNC1(priv, 0xdc88);
	u32 hi = (intr0 & 0x0000ffff) | (intr1 << 16);
	u32 lo = (intr0 >> 16) | (intr1 & 0xffff0000);
	int i;

	for (i = 0; (hi | lo) && i < 32; i++) {
		if ((hi | lo) & (1 << i))
			FUNC0(priv->base.events, i);
	}

	FUNC2(priv, 0xdc00, intr0);
	FUNC2(priv, 0xdc88, intr1);
}