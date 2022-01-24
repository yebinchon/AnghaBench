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
struct TYPE_2__ {int post; } ;
struct nv04_devinit_priv {TYPE_1__ base; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nv04_devinit_priv*,char*) ; 
 int FUNC2 (struct nv04_devinit_priv*,int /*<<< orphan*/ ,int) ; 

int
FUNC3(struct nouveau_object *object)
{
	struct nv04_devinit_priv *priv = (void *)object;

	if (!priv->base.post) {
		u32 htotal = FUNC2(priv, 0, 0x06);
		htotal |= (FUNC2(priv, 0, 0x07) & 0x01) << 8;
		htotal |= (FUNC2(priv, 0, 0x07) & 0x20) << 4;
		htotal |= (FUNC2(priv, 0, 0x25) & 0x01) << 10;
		htotal |= (FUNC2(priv, 0, 0x41) & 0x01) << 11;
		if (!htotal) {
			FUNC1(priv, "adaptor not initialised\n");
			priv->base.post = true;
		}
	}

	return FUNC0(&priv->base);
}