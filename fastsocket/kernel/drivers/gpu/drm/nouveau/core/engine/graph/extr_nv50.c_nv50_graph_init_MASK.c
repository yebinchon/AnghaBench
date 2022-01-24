#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nv50_graph_priv {int /*<<< orphan*/  size; int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_3__ {int chipset; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct nv50_graph_priv*) ; 
 int FUNC3 (struct nv50_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_graph_priv*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_object *object)
{
	struct nv50_graph_priv *priv = (void *)object;
	int ret, units, i;

	ret = FUNC0(&priv->base);
	if (ret)
		return ret;

	/* NV_PGRAPH_DEBUG_3_HW_CTX_SWITCH_ENABLED */
	FUNC4(priv, 0x40008c, 0x00000004);

	/* reset/enable traps and interrupts */
	FUNC4(priv, 0x400804, 0xc0000000);
	FUNC4(priv, 0x406800, 0xc0000000);
	FUNC4(priv, 0x400c04, 0xc0000000);
	FUNC4(priv, 0x401800, 0xc0000000);
	FUNC4(priv, 0x405018, 0xc0000000);
	FUNC4(priv, 0x402000, 0xc0000000);

	units = FUNC3(priv, 0x001540);
	for (i = 0; i < 16; i++) {
		if (!(units & (1 << i)))
			continue;

		if (FUNC2(priv)->chipset < 0xa0) {
			FUNC4(priv, 0x408900 + (i << 12), 0xc0000000);
			FUNC4(priv, 0x408e08 + (i << 12), 0xc0000000);
			FUNC4(priv, 0x408314 + (i << 12), 0xc0000000);
		} else {
			FUNC4(priv, 0x408600 + (i << 11), 0xc0000000);
			FUNC4(priv, 0x408708 + (i << 11), 0xc0000000);
			FUNC4(priv, 0x40831c + (i << 11), 0xc0000000);
		}
	}

	FUNC4(priv, 0x400108, 0xffffffff);
	FUNC4(priv, 0x400138, 0xffffffff);
	FUNC4(priv, 0x400100, 0xffffffff);
	FUNC4(priv, 0x40013c, 0xffffffff);
	FUNC4(priv, 0x400500, 0x00010001);

	/* upload context program, initialise ctxctl defaults */
	ret = FUNC1(FUNC2(priv), &priv->size);
	if (ret)
		return ret;

	FUNC4(priv, 0x400824, 0x00000000);
	FUNC4(priv, 0x400828, 0x00000000);
	FUNC4(priv, 0x40082c, 0x00000000);
	FUNC4(priv, 0x400830, 0x00000000);
	FUNC4(priv, 0x40032c, 0x00000000);
	FUNC4(priv, 0x400330, 0x00000000);

	/* some unknown zcull magic */
	switch (FUNC2(priv)->chipset & 0xf0) {
	case 0x50:
	case 0x80:
	case 0x90:
		FUNC4(priv, 0x402ca8, 0x00000800);
		break;
	case 0xa0:
	default:
		FUNC4(priv, 0x402cc0, 0x00000000);
		if (FUNC2(priv)->chipset == 0xa0 ||
		    FUNC2(priv)->chipset == 0xaa ||
		    FUNC2(priv)->chipset == 0xac) {
			FUNC4(priv, 0x402ca8, 0x00000802);
		} else {
			FUNC4(priv, 0x402cc0, 0x00000000);
			FUNC4(priv, 0x402ca8, 0x00000002);
		}

		break;
	}

	/* zero out zcull regions */
	for (i = 0; i < 8; i++) {
		FUNC4(priv, 0x402c20 + (i * 8), 0x00000000);
		FUNC4(priv, 0x402c24 + (i * 8), 0x00000000);
		FUNC4(priv, 0x402c28 + (i * 8), 0x00000000);
		FUNC4(priv, 0x402c2c + (i * 8), 0x00000000);
	}
	return 0;
}