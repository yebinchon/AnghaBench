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
struct nv10_graph_priv {int dummy; } ;
struct nouveau_fifo {int /*<<< orphan*/  (* start ) (struct nouveau_fifo*,unsigned long*) ;int /*<<< orphan*/  (* pause ) (struct nouveau_fifo*,unsigned long*) ;} ;
struct nouveau_fb_tile {int /*<<< orphan*/  addr; int /*<<< orphan*/  pitch; int /*<<< orphan*/  limit; } ;
struct nouveau_engine {int dummy; } ;
struct TYPE_3__ {struct nouveau_fb_tile* region; } ;
struct TYPE_4__ {TYPE_1__ tile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* FUNC3 (struct nouveau_engine*) ; 
 struct nouveau_fifo* FUNC4 (struct nouveau_engine*) ; 
 int /*<<< orphan*/  FUNC5 (struct nv10_graph_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct nv10_graph_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_fifo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_fifo*,unsigned long*) ; 

__attribute__((used)) static void
FUNC9(struct nouveau_engine *engine, int i)
{
	struct nouveau_fb_tile *tile = &FUNC3(engine)->tile.region[i];
	struct nouveau_fifo *pfifo = FUNC4(engine);
	struct nv10_graph_priv *priv = (void *)engine;
	unsigned long flags;

	pfifo->pause(pfifo, &flags);
	FUNC5(priv);

	FUNC6(priv, FUNC1(i), tile->limit);
	FUNC6(priv, FUNC2(i), tile->pitch);
	FUNC6(priv, FUNC0(i), tile->addr);

	pfifo->start(pfifo, &flags);
}