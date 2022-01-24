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
struct nv50_disp_priv {int dummy; } ;
struct TYPE_2__ {int chid; } ;
struct nv50_disp_dmac {int push; TYPE_1__ base; } ;
struct nouveau_object {scalar_t__ engine; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_disp_dmac*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_disp_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_disp_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_disp_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nv50_disp_priv*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_object *object)
{
	struct nv50_disp_priv *priv = (void *)object->engine;
	struct nv50_disp_dmac *dmac = (void *)object;
	int chid = dmac->base.chid;
	int ret;

	ret = FUNC0(&dmac->base);
	if (ret)
		return ret;

	/* enable error reporting */
	FUNC2(priv, 0x610090, 0x00000001 << chid, 0x00000001 << chid);
	FUNC2(priv, 0x6100a0, 0x00000001 << chid, 0x00000001 << chid);

	/* initialise channel for dma command submission */
	FUNC5(priv, 0x610494 + (chid * 0x0010), dmac->push);
	FUNC5(priv, 0x610498 + (chid * 0x0010), 0x00010000);
	FUNC5(priv, 0x61049c + (chid * 0x0010), 0x00000001);
	FUNC2(priv, 0x610490 + (chid * 0x0010), 0x00000010, 0x00000010);
	FUNC5(priv, 0x640000 + (chid * 0x1000), 0x00000000);
	FUNC5(priv, 0x610490 + (chid * 0x0010), 0x00000013);

	/* wait for it to go inactive */
	if (!FUNC4(priv, 0x610490 + (chid * 0x10), 0x80000000, 0x00000000)) {
		FUNC1(dmac, "init: 0x%08x\n",
			 FUNC3(priv, 0x610490 + (chid * 0x10)));
		return -EBUSY;
	}

	return 0;
}