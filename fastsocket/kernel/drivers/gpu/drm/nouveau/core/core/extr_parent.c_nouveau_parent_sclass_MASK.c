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
typedef  unsigned long long u64 ;
typedef  int u16 ;
struct nouveau_sclass {struct nouveau_sclass* sclass; struct nouveau_oclass* oclass; } ;
struct nouveau_oclass {int handle; scalar_t__ ofuncs; } ;
struct nouveau_object {struct nouveau_object* engine; } ;
struct nouveau_engine {struct nouveau_oclass* sclass; } ;
struct TYPE_2__ {unsigned long long engine; struct nouveau_sclass* sclass; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned long long) ; 
 struct nouveau_engine* FUNC1 (struct nouveau_object*,int) ; 
 struct nouveau_object* FUNC2 (struct nouveau_engine*) ; 
 TYPE_1__* FUNC3 (struct nouveau_object*) ; 

int
FUNC4(struct nouveau_object *parent, u16 handle,
		      struct nouveau_object **pengine,
		      struct nouveau_oclass **poclass)
{
	struct nouveau_sclass *sclass;
	struct nouveau_engine *engine;
	struct nouveau_oclass *oclass;
	u64 mask;

	sclass = FUNC3(parent)->sclass;
	while (sclass) {
		if ((sclass->oclass->handle & 0xffff) == handle) {
			*pengine = parent->engine;
			*poclass = sclass->oclass;
			return 0;
		}

		sclass = sclass->sclass;
	}

	mask = FUNC3(parent)->engine;
	while (mask) {
		int i = FUNC0(mask) - 1;

		if ((engine = FUNC1(parent, i))) {
			oclass = engine->sclass;
			while (oclass->ofuncs) {
				if ((oclass->handle & 0xffff) == handle) {
					*pengine = FUNC2(engine);
					*poclass = oclass;
					return 0;
				}
				oclass++;
			}
		}

		mask &= ~(1ULL << i);
	}

	return -EINVAL;
}