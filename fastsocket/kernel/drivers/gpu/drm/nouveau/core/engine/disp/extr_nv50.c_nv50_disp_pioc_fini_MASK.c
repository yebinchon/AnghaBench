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
struct nv50_disp_pioc {TYPE_1__ base; } ;
struct nouveau_object {scalar_t__ engine; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nv50_disp_pioc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_disp_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_disp_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_disp_priv*,int,int,int) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_object *object, bool suspend)
{
	struct nv50_disp_priv *priv = (void *)object->engine;
	struct nv50_disp_pioc *pioc = (void *)object;
	int chid = pioc->base.chid;

	FUNC2(priv, 0x610200 + (chid * 0x10), 0x00000001, 0x00000000);
	if (!FUNC4(priv, 0x610200 + (chid * 0x10), 0x00030000, 0x00000000)) {
		FUNC1(pioc, "timeout: 0x%08x\n",
			 FUNC3(priv, 0x610200 + (chid * 0x10)));
		if (suspend)
			return -EBUSY;
	}

	return FUNC0(&pioc->base, suspend);
}