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
struct nouveau_instmem {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,char*,char*,int,void**) ; 

int
FUNC2(struct nouveau_object *parent,
			struct nouveau_object *engine,
			struct nouveau_oclass *oclass,
			int length, void **pobject)
{
	struct nouveau_instmem *imem;
	int ret;

	ret = FUNC1(parent, engine, oclass, 0,
				     "INSTMEM", "instmem", length, pobject);
	imem = *pobject;
	if (ret)
		return ret;

	FUNC0(&imem->list);
	return 0;
}