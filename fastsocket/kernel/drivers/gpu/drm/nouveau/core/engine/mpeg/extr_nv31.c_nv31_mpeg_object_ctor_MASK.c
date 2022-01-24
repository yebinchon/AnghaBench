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
typedef  int /*<<< orphan*/  u32 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_gpuobj {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int /*<<< orphan*/ ,struct nouveau_object*,int,int,int /*<<< orphan*/ ,struct nouveau_gpuobj**) ; 
 int FUNC1 (struct nouveau_gpuobj*) ; 
 struct nouveau_object* FUNC2 (struct nouveau_gpuobj*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_gpuobj*,int,int) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_object *parent,
		      struct nouveau_object *engine,
		      struct nouveau_oclass *oclass, void *data, u32 size,
		      struct nouveau_object **pobject)
{
	struct nouveau_gpuobj *obj;
	int ret;

	ret = FUNC0(parent, engine, oclass, 0, parent,
				    20, 16, 0, &obj);
	*pobject = FUNC2(obj);
	if (ret)
		return ret;

	FUNC3(obj, 0x00, FUNC1(obj));
	FUNC3(obj, 0x04, 0x00000000);
	FUNC3(obj, 0x08, 0x00000000);
	FUNC3(obj, 0x0c, 0x00000000);
	return 0;
}