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
struct nv40_graph_priv {int dummy; } ;
struct nv40_graph_chan {int dummy; } ;
struct nouveau_object {scalar_t__ engine; } ;
struct TYPE_2__ {int addr; } ;

/* Variables and functions */
 int EBUSY ; 
 TYPE_1__* FUNC0 (struct nv40_graph_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct nv40_graph_priv*,int,int,int) ; 
 int FUNC2 (struct nv40_graph_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv40_graph_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv40_graph_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nv40_graph_priv*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_object *object, bool suspend)
{
	struct nv40_graph_priv *priv = (void *)object->engine;
	struct nv40_graph_chan *chan = (void *)object;
	u32 inst = 0x01000000 | FUNC0(chan)->addr >> 4;
	int ret = 0;

	FUNC1(priv, 0x400720, 0x00000001, 0x00000000);

	if (FUNC2(priv, 0x40032c) == inst) {
		if (suspend) {
			FUNC5(priv, 0x400720, 0x00000000);
			FUNC5(priv, 0x400784, inst);
			FUNC1(priv, 0x400310, 0x00000020, 0x00000020);
			FUNC1(priv, 0x400304, 0x00000001, 0x00000001);
			if (!FUNC3(priv, 0x400300, 0x00000001, 0x00000000)) {
				u32 insn = FUNC2(priv, 0x400308);
				FUNC4(priv, "ctxprog timeout 0x%08x\n", insn);
				ret = -EBUSY;
			}
		}

		FUNC1(priv, 0x40032c, 0x01000000, 0x00000000);
	}

	if (FUNC2(priv, 0x400330) == inst)
		FUNC1(priv, 0x400330, 0x01000000, 0x00000000);

	FUNC1(priv, 0x400720, 0x00000001, 0x00000001);
	return ret;
}