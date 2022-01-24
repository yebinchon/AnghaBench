#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nv20_graph_priv {TYPE_1__* ctxtab; int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_5__ {int regions; } ;
struct nouveau_fb {TYPE_2__ tile; } ;
struct nouveau_engine {int /*<<< orphan*/  (* tile_prog ) (struct nouveau_engine*,int) ;} ;
struct TYPE_6__ {int chipset; } ;
struct TYPE_4__ {int addr; } ;

/* Variables and functions */
 int NV03_PGRAPH_INTR ; 
 int NV03_PGRAPH_INTR_EN ; 
 int NV04_PGRAPH_DEBUG_0 ; 
 int NV04_PGRAPH_DEBUG_1 ; 
 int NV04_PGRAPH_DEBUG_3 ; 
 int NV04_PGRAPH_LIMIT_VIOL_PIX ; 
 int NV10_PGRAPH_CTX_CONTROL ; 
 int NV10_PGRAPH_DEBUG_4 ; 
 int NV10_PGRAPH_RDI_DATA ; 
 int NV10_PGRAPH_RDI_INDEX ; 
 int NV10_PGRAPH_STATE ; 
 int NV20_PGRAPH_CHANNEL_CTX_TABLE ; 
 struct nouveau_fb* FUNC0 (struct nouveau_object*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (struct nv20_graph_priv*) ; 
 struct nouveau_engine* FUNC3 (struct nouveau_object*) ; 
 int FUNC4 (struct nv20_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nv20_graph_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_engine*,int) ; 

int
FUNC7(struct nouveau_object *object)
{
	struct nouveau_engine *engine = FUNC3(object);
	struct nv20_graph_priv *priv = (void *)engine;
	struct nouveau_fb *pfb = FUNC0(object);
	int ret, i;

	ret = FUNC1(&priv->base);
	if (ret)
		return ret;

	FUNC5(priv, NV20_PGRAPH_CHANNEL_CTX_TABLE, priv->ctxtab->addr >> 4);

	FUNC5(priv, NV03_PGRAPH_INTR   , 0xFFFFFFFF);
	FUNC5(priv, NV03_PGRAPH_INTR_EN, 0xFFFFFFFF);

	FUNC5(priv, NV04_PGRAPH_DEBUG_0, 0xFFFFFFFF);
	FUNC5(priv, NV04_PGRAPH_DEBUG_0, 0x00000000);
	FUNC5(priv, NV04_PGRAPH_DEBUG_1, 0x401287c0);
	FUNC5(priv, 0x400890, 0x01b463ff);
	FUNC5(priv, NV04_PGRAPH_DEBUG_3, 0xf2de0475);
	FUNC5(priv, NV10_PGRAPH_DEBUG_4, 0x00008000);
	FUNC5(priv, NV04_PGRAPH_LIMIT_VIOL_PIX, 0xf04bdff6);
	FUNC5(priv, 0x400B80, 0x1003d888);
	FUNC5(priv, 0x400B84, 0x0c000000);
	FUNC5(priv, 0x400098, 0x00000000);
	FUNC5(priv, 0x40009C, 0x0005ad00);
	FUNC5(priv, 0x400B88, 0x62ff00ff); /* suspiciously like PGRAPH_DEBUG_2 */
	FUNC5(priv, 0x4000a0, 0x00000000);
	FUNC5(priv, 0x4000a4, 0x00000008);
	FUNC5(priv, 0x4008a8, 0xb784a400);
	FUNC5(priv, 0x400ba0, 0x002f8685);
	FUNC5(priv, 0x400ba4, 0x00231f3f);
	FUNC5(priv, 0x4008a4, 0x40000020);

	if (FUNC2(priv)->chipset == 0x34) {
		FUNC5(priv, NV10_PGRAPH_RDI_INDEX, 0x00EA0004);
		FUNC5(priv, NV10_PGRAPH_RDI_DATA , 0x00200201);
		FUNC5(priv, NV10_PGRAPH_RDI_INDEX, 0x00EA0008);
		FUNC5(priv, NV10_PGRAPH_RDI_DATA , 0x00000008);
		FUNC5(priv, NV10_PGRAPH_RDI_INDEX, 0x00EA0000);
		FUNC5(priv, NV10_PGRAPH_RDI_DATA , 0x00000032);
		FUNC5(priv, NV10_PGRAPH_RDI_INDEX, 0x00E00004);
		FUNC5(priv, NV10_PGRAPH_RDI_DATA , 0x00000002);
	}

	FUNC5(priv, 0x4000c0, 0x00000016);

	/* Turn all the tiling regions off. */
	for (i = 0; i < pfb->tile.regions; i++)
		engine->tile_prog(engine, i);

	FUNC5(priv, NV10_PGRAPH_CTX_CONTROL, 0x10000100);
	FUNC5(priv, NV10_PGRAPH_STATE      , 0xFFFFFFFF);
	FUNC5(priv, 0x0040075c             , 0x00000001);

	/* begin RAM config */
	/* vramsz = pci_resource_len(priv->dev->pdev, 0) - 1; */
	FUNC5(priv, 0x4009A4, FUNC4(priv, 0x100200));
	FUNC5(priv, 0x4009A8, FUNC4(priv, 0x100204));
	if (FUNC2(priv)->chipset != 0x34) {
		FUNC5(priv, 0x400750, 0x00EA0000);
		FUNC5(priv, 0x400754, FUNC4(priv, 0x100200));
		FUNC5(priv, 0x400750, 0x00EA0004);
		FUNC5(priv, 0x400754, FUNC4(priv, 0x100204));
	}
	return 0;
}