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
struct nv10_graph_priv {int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_3__ {int regions; } ;
struct nouveau_fb {TYPE_1__ tile; } ;
struct nouveau_engine {int /*<<< orphan*/  (* tile_prog ) (struct nouveau_engine*,int) ;} ;
struct TYPE_4__ {int chipset; } ;

/* Variables and functions */
 int NV03_PGRAPH_INTR ; 
 int NV03_PGRAPH_INTR_EN ; 
 int NV04_PGRAPH_DEBUG_0 ; 
 int NV04_PGRAPH_DEBUG_1 ; 
 int NV04_PGRAPH_DEBUG_2 ; 
 int NV04_PGRAPH_DEBUG_3 ; 
 int NV10_PGRAPH_CTX_CONTROL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  NV10_PGRAPH_CTX_USER ; 
 int NV10_PGRAPH_DEBUG_4 ; 
 int NV10_PGRAPH_FFINTFC_ST2 ; 
 int NV10_PGRAPH_STATE ; 
 struct nouveau_fb* FUNC1 (struct nouveau_object*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (struct nv10_graph_priv*) ; 
 struct nouveau_engine* FUNC4 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct nv10_graph_priv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nv10_graph_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_engine*,int) ; 

__attribute__((used)) static int
FUNC8(struct nouveau_object *object)
{
	struct nouveau_engine *engine = FUNC4(object);
	struct nouveau_fb *pfb = FUNC1(object);
	struct nv10_graph_priv *priv = (void *)engine;
	int ret, i;

	ret = FUNC2(&priv->base);
	if (ret)
		return ret;

	FUNC6(priv, NV03_PGRAPH_INTR   , 0xFFFFFFFF);
	FUNC6(priv, NV03_PGRAPH_INTR_EN, 0xFFFFFFFF);

	FUNC6(priv, NV04_PGRAPH_DEBUG_0, 0xFFFFFFFF);
	FUNC6(priv, NV04_PGRAPH_DEBUG_0, 0x00000000);
	FUNC6(priv, NV04_PGRAPH_DEBUG_1, 0x00118700);
	/* nv_wr32(priv, NV04_PGRAPH_DEBUG_2, 0x24E00810); */ /* 0x25f92ad9 */
	FUNC6(priv, NV04_PGRAPH_DEBUG_2, 0x25f92ad9);
	FUNC6(priv, NV04_PGRAPH_DEBUG_3, 0x55DE0830 | (1 << 29) | (1 << 31));

	if (FUNC3(priv)->chipset >= 0x17) {
		FUNC6(priv, NV10_PGRAPH_DEBUG_4, 0x1f000000);
		FUNC6(priv, 0x400a10, 0x03ff3fb6);
		FUNC6(priv, 0x400838, 0x002f8684);
		FUNC6(priv, 0x40083c, 0x00115f3f);
		FUNC6(priv, 0x4006b0, 0x40000020);
	} else {
		FUNC6(priv, NV10_PGRAPH_DEBUG_4, 0x00000000);
	}

	/* Turn all the tiling regions off. */
	for (i = 0; i < pfb->tile.regions; i++)
		engine->tile_prog(engine, i);

	FUNC6(priv, FUNC0(0), 0x00000000);
	FUNC6(priv, FUNC0(1), 0x00000000);
	FUNC6(priv, FUNC0(2), 0x00000000);
	FUNC6(priv, FUNC0(3), 0x00000000);
	FUNC6(priv, FUNC0(4), 0x00000000);
	FUNC6(priv, NV10_PGRAPH_STATE, 0xFFFFFFFF);

	FUNC5(priv, NV10_PGRAPH_CTX_USER, 0xff000000, 0x1f000000);
	FUNC6(priv, NV10_PGRAPH_CTX_CONTROL, 0x10000100);
	FUNC6(priv, NV10_PGRAPH_FFINTFC_ST2, 0x08000000);
	return 0;
}