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
struct nv50_disp_dmac {TYPE_1__ base; } ;
struct nouveau_object {scalar_t__ engine; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_disp_dmac*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_disp_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_disp_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_disp_priv*,int,int,int) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_object *object, bool suspend)
{
	struct nv50_disp_priv *priv = (void *)object->engine;
	struct nv50_disp_dmac *dmac = (void *)object;
	int chid = dmac->base.chid;

	/* deactivate channel */
	FUNC2(priv, 0x610200 + (chid * 0x0010), 0x00001010, 0x00001000);
	FUNC2(priv, 0x610200 + (chid * 0x0010), 0x00000003, 0x00000000);
	if (!FUNC4(priv, 0x610200 + (chid * 0x10), 0x001e0000, 0x00000000)) {
		FUNC1(dmac, "fini timeout, 0x%08x\n",
			 FUNC3(priv, 0x610200 + (chid * 0x10)));
		if (suspend)
			return -EBUSY;
	}

	/* disable error reporting */
	FUNC2(priv, 0x610028, 0x00010001 << chid, 0x00000000 << chid);

	return FUNC0(&dmac->base, suspend);
}