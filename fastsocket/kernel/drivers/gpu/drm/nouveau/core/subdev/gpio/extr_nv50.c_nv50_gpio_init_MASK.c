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
struct nv50_gpio_priv {int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int chipset; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct nv50_gpio_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_gpio_priv*,int,int) ; 

int
FUNC3(struct nouveau_object *object)
{
	struct nv50_gpio_priv *priv = (void *)object;
	int ret;

	ret = FUNC0(&priv->base);
	if (ret)
		return ret;

	/* disable, and ack any pending gpio interrupts */
	FUNC2(priv, 0xe050, 0x00000000);
	FUNC2(priv, 0xe054, 0xffffffff);
	if (FUNC1(priv)->chipset >= 0x90) {
		FUNC2(priv, 0xe070, 0x00000000);
		FUNC2(priv, 0xe074, 0xffffffff);
	}

	return 0;
}