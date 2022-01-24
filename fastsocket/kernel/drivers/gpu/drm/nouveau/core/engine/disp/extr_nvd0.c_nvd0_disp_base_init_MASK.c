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
struct nv50_disp_base {int /*<<< orphan*/  base; } ;
struct nouveau_object {int /*<<< orphan*/  parent; scalar_t__ engine; } ;
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
	 * something similar.
	 */

	/* ... CRTC caps */
	for (i = 0; i < priv->head.nr; i++) {
		tmp = FUNC4(priv, 0x616104 + (i * 0x800));
		FUNC6(priv, 0x6101b4 + (i * 0x800), tmp);
		tmp = FUNC4(priv, 0x616108 + (i * 0x800));
		FUNC6(priv, 0x6101b8 + (i * 0x800), tmp);
		tmp = FUNC4(priv, 0x61610c + (i * 0x800));
		FUNC6(priv, 0x6101bc + (i * 0x800), tmp);
	}

	/* ... DAC caps */
	for (i = 0; i < priv->dac.nr; i++) {
		tmp = FUNC4(priv, 0x61a000 + (i * 0x800));
		FUNC6(priv, 0x6101c0 + (i * 0x800), tmp);
	}

	/* ... SOR caps */
	for (i = 0; i < priv->sor.nr; i++) {
		tmp = FUNC4(priv, 0x61c000 + (i * 0x800));
		FUNC6(priv, 0x6301c4 + (i * 0x800), tmp);
	}

	/* steal display away from vbios, or something like that */
	if (FUNC4(priv, 0x6100ac) & 0x00000100) {
		FUNC6(priv, 0x6100ac, 0x00000100);
		FUNC3(priv, 0x6194e8, 0x00000001, 0x00000000);
		if (!FUNC5(priv, 0x6194e8, 0x00000002, 0x00000000)) {
			FUNC1(priv, "timeout acquiring display\n");
			return -EBUSY;
		}
	}

	/* point at display engine memory area (hash table, objects) */
	FUNC6(priv, 0x610010, (FUNC2(object->parent)->addr >> 8) | 9);

	/* enable supervisor interrupts, disable everything else */
	FUNC6(priv, 0x610090, 0x00000000);
	FUNC6(priv, 0x6100a0, 0x00000000);
	FUNC6(priv, 0x6100b0, 0x00000307);

	return 0;
}