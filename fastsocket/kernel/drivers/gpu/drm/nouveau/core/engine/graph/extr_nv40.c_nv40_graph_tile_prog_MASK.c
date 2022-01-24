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
struct nv40_graph_priv {int dummy; } ;
struct nouveau_fifo {int /*<<< orphan*/  (* start ) (struct nouveau_fifo*,unsigned long*) ;int /*<<< orphan*/  (* pause ) (struct nouveau_fifo*,unsigned long*) ;} ;
struct nouveau_fb_tile {int /*<<< orphan*/  zcomp; int /*<<< orphan*/  addr; int /*<<< orphan*/  limit; int /*<<< orphan*/  pitch; } ;
struct nouveau_engine {int dummy; } ;
struct TYPE_4__ {struct nouveau_fb_tile* region; } ;
struct TYPE_6__ {TYPE_1__ tile; } ;
struct TYPE_5__ {int chipset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 TYPE_3__* FUNC15 (struct nouveau_engine*) ; 
 struct nouveau_fifo* FUNC16 (struct nouveau_engine*) ; 
 int /*<<< orphan*/  FUNC17 (struct nv40_graph_priv*) ; 
 TYPE_2__* FUNC18 (struct nv40_graph_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct nv40_graph_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct nouveau_fifo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC21 (struct nouveau_fifo*,unsigned long*) ; 

__attribute__((used)) static void
FUNC22(struct nouveau_engine *engine, int i)
{
	struct nouveau_fb_tile *tile = &FUNC15(engine)->tile.region[i];
	struct nouveau_fifo *pfifo = FUNC16(engine);
	struct nv40_graph_priv *priv = (void *)engine;
	unsigned long flags;

	pfifo->pause(pfifo, &flags);
	FUNC17(priv);

	switch (FUNC18(priv)->chipset) {
	case 0x40:
	case 0x41:
	case 0x42:
	case 0x43:
	case 0x45:
	case 0x4e:
		FUNC19(priv, FUNC2(i), tile->pitch);
		FUNC19(priv, FUNC1(i), tile->limit);
		FUNC19(priv, FUNC0(i), tile->addr);
		FUNC19(priv, FUNC6(i), tile->pitch);
		FUNC19(priv, FUNC5(i), tile->limit);
		FUNC19(priv, FUNC4(i), tile->addr);
		switch (FUNC18(priv)->chipset) {
		case 0x40:
		case 0x45:
			FUNC19(priv, FUNC3(i), tile->zcomp);
			FUNC19(priv, FUNC7(i), tile->zcomp);
			break;
		case 0x41:
		case 0x42:
		case 0x43:
			FUNC19(priv, FUNC8(i), tile->zcomp);
			FUNC19(priv, FUNC9(i), tile->zcomp);
			break;
		default:
			break;
		}
		break;
	case 0x44:
	case 0x4a:
		FUNC19(priv, FUNC2(i), tile->pitch);
		FUNC19(priv, FUNC1(i), tile->limit);
		FUNC19(priv, FUNC0(i), tile->addr);
		break;
	case 0x46:
	case 0x4c:
	case 0x47:
	case 0x49:
	case 0x4b:
	case 0x63:
	case 0x67:
	case 0x68:
		FUNC19(priv, FUNC12(i), tile->pitch);
		FUNC19(priv, FUNC11(i), tile->limit);
		FUNC19(priv, FUNC10(i), tile->addr);
		FUNC19(priv, FUNC6(i), tile->pitch);
		FUNC19(priv, FUNC5(i), tile->limit);
		FUNC19(priv, FUNC4(i), tile->addr);
		switch (FUNC18(priv)->chipset) {
		case 0x47:
		case 0x49:
		case 0x4b:
			FUNC19(priv, FUNC13(i), tile->zcomp);
			FUNC19(priv, FUNC14(i), tile->zcomp);
			break;
		default:
			break;
		}
		break;
	default:
		break;
	}

	pfifo->start(pfifo, &flags);
}