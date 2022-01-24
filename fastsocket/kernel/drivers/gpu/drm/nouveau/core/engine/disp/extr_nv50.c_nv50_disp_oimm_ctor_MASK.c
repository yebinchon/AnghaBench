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
typedef  int u32 ;
struct nv50_display_oimm_class {int head; } ;
struct nv50_disp_pioc {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,int,void**) ; 
 struct nouveau_object* FUNC1 (struct nv50_disp_pioc*) ; 

__attribute__((used)) static int
FUNC2(struct nouveau_object *parent,
		    struct nouveau_object *engine,
		    struct nouveau_oclass *oclass, void *data, u32 size,
		    struct nouveau_object **pobject)
{
	struct nv50_display_oimm_class *args = data;
	struct nv50_disp_pioc *pioc;
	int ret;

	if (size < sizeof(*args) || args->head > 1)
		return -EINVAL;

	ret = FUNC0(parent, engine, oclass, 5 + args->head,
				     sizeof(*pioc), (void **)&pioc);
	*pobject = FUNC1(pioc);
	if (ret)
		return ret;

	return 0;
}