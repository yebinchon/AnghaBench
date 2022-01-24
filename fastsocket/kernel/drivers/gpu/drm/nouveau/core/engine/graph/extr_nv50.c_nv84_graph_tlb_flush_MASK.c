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
typedef  int u64 ;
typedef  int u32 ;
struct nv50_graph_priv {int /*<<< orphan*/  lock; } ;
struct nouveau_timer {int (* read ) (struct nouveau_timer*) ;} ;
struct nouveau_engine {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_graph_priv*,int,int /*<<< orphan*/ ,int) ; 
 struct nouveau_timer* FUNC2 (struct nouveau_engine*) ; 
 int /*<<< orphan*/  nv50_pgraph_status ; 
 int /*<<< orphan*/  nv50_pgraph_vstatus_0 ; 
 int /*<<< orphan*/  nv50_pgraph_vstatus_1 ; 
 int /*<<< orphan*/  nv50_pgraph_vstatus_2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_graph_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct nv50_graph_priv*,int,int,int) ; 
 int FUNC6 (struct nv50_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 (struct nouveau_timer*) ; 
 int FUNC11 (struct nouveau_timer*) ; 

__attribute__((used)) static int
FUNC12(struct nouveau_engine *engine)
{
	struct nouveau_timer *ptimer = FUNC2(engine);
	struct nv50_graph_priv *priv = (void *)engine;
	bool idle, timeout = false;
	unsigned long flags;
	u64 start;
	u32 tmp;

	FUNC8(&priv->lock, flags);
	FUNC5(priv, 0x400500, 0x00000001, 0x00000000);

	start = ptimer->read(ptimer);
	do {
		idle = true;

		for (tmp = FUNC6(priv, 0x400380); tmp && idle; tmp >>= 3) {
			if ((tmp & 7) == 1)
				idle = false;
		}

		for (tmp = FUNC6(priv, 0x400384); tmp && idle; tmp >>= 3) {
			if ((tmp & 7) == 1)
				idle = false;
		}

		for (tmp = FUNC6(priv, 0x400388); tmp && idle; tmp >>= 3) {
			if ((tmp & 7) == 1)
				idle = false;
		}
	} while (!idle &&
		 !(timeout = ptimer->read(ptimer) - start > 2000000000));

	if (timeout) {
		FUNC4(priv, "PGRAPH TLB flush idle timeout fail\n");

		tmp = FUNC6(priv, 0x400700);
		FUNC4(priv, "PGRAPH_STATUS  : 0x%08x", tmp);
		FUNC0(nv50_pgraph_status, tmp);
		FUNC7("\n");

		FUNC1(priv, 0, nv50_pgraph_vstatus_0,
				FUNC6(priv, 0x400380));
		FUNC1(priv, 1, nv50_pgraph_vstatus_1,
				FUNC6(priv, 0x400384));
		FUNC1(priv, 2, nv50_pgraph_vstatus_2,
				FUNC6(priv, 0x400388));
	}

	FUNC3(&engine->base, 0x00);

	FUNC5(priv, 0x400500, 0x00000001, 0x00000001);
	FUNC9(&priv->lock, flags);
	return timeout ? -EBUSY : 0;
}