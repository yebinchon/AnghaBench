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
struct nve0_gpio_priv {int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nve0_gpio_priv*,int,int) ; 

int
FUNC2(struct nouveau_object *object, bool suspend)
{
	struct nve0_gpio_priv *priv = (void *)object;
	FUNC1(priv, 0xdc08, 0x00000000);
	FUNC1(priv, 0xdc88, 0x00000000);
	return FUNC0(&priv->base, suspend);
}