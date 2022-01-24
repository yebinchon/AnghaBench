#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int nr; } ;
struct TYPE_6__ {int nr; } ;
struct TYPE_5__ {int nr; } ;
struct nv50_disp_priv {TYPE_3__ sor; TYPE_2__ dac; TYPE_1__ head; } ;
struct nv50_disp_base {int /*<<< orphan*/  ramht; int /*<<< orphan*/  base; } ;
struct nouveau_object {scalar_t__ engine; } ;
struct TYPE_8__ {int addr; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_disp_priv*,char*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_disp_priv*,int,int,int) ; 
 int FUNC4 (struct nv50_disp_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nv50_disp_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nv50_disp_priv*,int,int) ; 

__attribute__((used)) static int
FUNC7(struct nouveau_object *object)
{
	struct nv50_disp_priv *priv = (void *)object->engine;
	struct nv50_disp_base *base = (void *)object;
	int ret, i;
	u32 tmp;

	ret = FUNC0(&base->base);
	if (ret)
		return ret;

	/* The below segments of code copying values from one register to
	 * another appear to inform EVO of the display capabilities or
	 * something similar.  NFI what the 0x614004 caps are for..
	 */
	tmp = FUNC4(priv, 0x614004);
	FUNC6(priv, 0x610184, tmp);

	/* ... CRTC caps */
	for (i = 0; i < priv->head.nr; i++) {
		tmp = FUNC4(priv, 0x616100 + (i * 0x800));
		FUNC6(priv, 0x610190 + (i * 0x10), tmp);
		tmp = FUNC4(priv, 0x616104 + (i * 0x800));
		FUNC6(priv, 0x610194 + (i * 0x10), tmp);
		tmp = FUNC4(priv, 0x616108 + (i * 0x800));
		FUNC6(priv, 0x610198 + (i * 0x10), tmp);
		tmp = FUNC4(priv, 0x61610c + (i * 0x800));
		FUNC6(priv, 0x61019c + (i * 0x10), tmp);
	}

	/* ... DAC caps */
	for (i = 0; i < priv->dac.nr; i++) {
		tmp = FUNC4(priv, 0x61a000 + (i * 0x800));
		FUNC6(priv, 0x6101d0 + (i * 0x04), tmp);
	}

	/* ... SOR caps */
	for (i = 0; i < priv->sor.nr; i++) {
		tmp = FUNC4(priv, 0x61c000 + (i * 0x800));
		FUNC6(priv, 0x6101e0 + (i * 0x04), tmp);
	}

	/* ... PIOR caps */
	for (i = 0; i < 3; i++) {
		tmp = FUNC4(priv, 0x61e000 + (i * 0x800));
		FUNC6(priv, 0x6101f0 + (i * 0x04), tmp);
	}

	/* steal display away from vbios, or something like that */
	if (FUNC4(priv, 0x610024) & 0x00000100) {
		FUNC6(priv, 0x610024, 0x00000100);
		FUNC3(priv, 0x6194e8, 0x00000001, 0x00000000);
		if (!FUNC5(priv, 0x6194e8, 0x00000002, 0x00000000)) {
			FUNC1(priv, "timeout acquiring display\n");
			return -EBUSY;
		}
	}

	/* point at display engine memory area (hash table, objects) */
	FUNC6(priv, 0x610010, (FUNC2(base->ramht)->addr >> 8) | 9);

	/* enable supervisor interrupts, disable everything else */
	FUNC6(priv, 0x61002c, 0x00000370);
	FUNC6(priv, 0x610028, 0x00000000);
	return 0;
}