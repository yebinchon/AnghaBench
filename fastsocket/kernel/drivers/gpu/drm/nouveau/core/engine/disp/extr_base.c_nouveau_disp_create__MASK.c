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
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_disp {int /*<<< orphan*/  vblank; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,char const*,char const*,int,void**) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 

int
FUNC2(struct nouveau_object *parent,
		     struct nouveau_object *engine,
		     struct nouveau_oclass *oclass, int heads,
		     const char *intname, const char *extname,
		     int length, void **pobject)
{
	struct nouveau_disp *disp;
	int ret;

	ret = FUNC0(parent, engine, oclass, true,
				     intname, extname, length, pobject);
	disp = *pobject;
	if (ret)
		return ret;

	return FUNC1(heads, &disp->vblank);
}