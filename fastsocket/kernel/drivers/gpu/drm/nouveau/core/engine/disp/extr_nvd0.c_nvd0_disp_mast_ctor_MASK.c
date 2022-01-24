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
struct nv50_display_mast_class {int /*<<< orphan*/  pushbuf; } ;
struct nv50_disp_dmac {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  object_detach; int /*<<< orphan*/  object_attach; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void**) ; 
 struct nouveau_object* FUNC1 (struct nv50_disp_dmac*) ; 
 TYPE_1__* FUNC2 (struct nv50_disp_dmac*) ; 
 int /*<<< orphan*/  nvd0_disp_dmac_object_attach ; 
 int /*<<< orphan*/  nvd0_disp_dmac_object_detach ; 

__attribute__((used)) static int
FUNC3(struct nouveau_object *parent,
		    struct nouveau_object *engine,
		    struct nouveau_oclass *oclass, void *data, u32 size,
		    struct nouveau_object **pobject)
{
	struct nv50_display_mast_class *args = data;
	struct nv50_disp_dmac *mast;
	int ret;

	if (size < sizeof(*args))
		return -EINVAL;

	ret = FUNC0(parent, engine, oclass, args->pushbuf,
				     0, sizeof(*mast), (void **)&mast);
	*pobject = FUNC1(mast);
	if (ret)
		return ret;

	FUNC2(mast)->object_attach = nvd0_disp_dmac_object_attach;
	FUNC2(mast)->object_detach = nvd0_disp_dmac_object_detach;
	return 0;
}