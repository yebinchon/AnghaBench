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
struct nv20_graph_priv {int dummy; } ;
struct nouveau_fifo {int /*<<< orphan*/  (* start ) (struct nouveau_fifo*,unsigned long*) ;int /*<<< orphan*/  (* pause ) (struct nouveau_fifo*,unsigned long*) ;} ;
struct nouveau_fb_tile {int limit; int pitch; int addr; int zcomp; } ;
struct nouveau_engine {int dummy; } ;
struct TYPE_4__ {struct nouveau_fb_tile* region; } ;
struct TYPE_6__ {TYPE_1__ tile; } ;
struct TYPE_5__ {int chipset; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV10_PGRAPH_RDI_DATA ; 
 int /*<<< orphan*/  NV10_PGRAPH_RDI_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_3__* FUNC4 (struct nouveau_engine*) ; 
 struct nouveau_fifo* FUNC5 (struct nouveau_engine*) ; 
 int /*<<< orphan*/  FUNC6 (struct nv20_graph_priv*) ; 
 TYPE_2__* FUNC7 (struct nouveau_engine*) ; 
 int /*<<< orphan*/  FUNC8 (struct nv20_graph_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_fifo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC10 (struct nouveau_fifo*,unsigned long*) ; 

void
FUNC11(struct nouveau_engine *engine, int i)
{
	struct nouveau_fb_tile *tile = &FUNC4(engine)->tile.region[i];
	struct nouveau_fifo *pfifo = FUNC5(engine);
	struct nv20_graph_priv *priv = (void *)engine;
	unsigned long flags;

	pfifo->pause(pfifo, &flags);
	FUNC6(priv);

	FUNC8(priv, FUNC1(i), tile->limit);
	FUNC8(priv, FUNC2(i), tile->pitch);
	FUNC8(priv, FUNC0(i), tile->addr);

	FUNC8(priv, NV10_PGRAPH_RDI_INDEX, 0x00EA0030 + 4 * i);
	FUNC8(priv, NV10_PGRAPH_RDI_DATA, tile->limit);
	FUNC8(priv, NV10_PGRAPH_RDI_INDEX, 0x00EA0050 + 4 * i);
	FUNC8(priv, NV10_PGRAPH_RDI_DATA, tile->pitch);
	FUNC8(priv, NV10_PGRAPH_RDI_INDEX, 0x00EA0010 + 4 * i);
	FUNC8(priv, NV10_PGRAPH_RDI_DATA, tile->addr);

	if (FUNC7(engine)->chipset != 0x34) {
		FUNC8(priv, FUNC3(i), tile->zcomp);
		FUNC8(priv, NV10_PGRAPH_RDI_INDEX, 0x00ea0090 + 4 * i);
		FUNC8(priv, NV10_PGRAPH_RDI_DATA, tile->zcomp);
	}

	pfifo->start(pfifo, &flags);
}