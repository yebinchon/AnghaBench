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
struct nv04_devinit_priv {scalar_t__ owner; int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nv04_devinit_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nv04_devinit_priv*,int,int,int) ; 
 scalar_t__ FUNC3 (struct nv04_devinit_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct nv04_devinit_priv*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct nouveau_object *object, bool suspend)
{
	struct nv04_devinit_priv *priv = (void *)object;

	/* make i2c busses accessible */
	FUNC2(priv, 0x000200, 0x00000001, 0x00000001);

	/* unlock extended vga crtc regs, and unslave crtcs */
	FUNC1(priv, false);
	if (priv->owner < 0)
		priv->owner = FUNC3(priv);
	FUNC4(priv, 0);

	return FUNC0(&priv->base, suspend);
}