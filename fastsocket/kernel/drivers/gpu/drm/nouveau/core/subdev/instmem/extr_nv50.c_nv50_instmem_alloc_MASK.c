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
typedef  scalar_t__ u32 ;
struct nouveau_object {int dummy; } ;
struct nouveau_instmem {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,int /*<<< orphan*/ *,void*,scalar_t__,struct nouveau_object**) ; 
 int /*<<< orphan*/  nv50_instobj_oclass ; 
 struct nouveau_object* FUNC1 (struct nouveau_instmem*) ; 

__attribute__((used)) static int
FUNC2(struct nouveau_instmem *imem, struct nouveau_object *parent,
		   u32 size, u32 align, struct nouveau_object **pobject)
{
	struct nouveau_object *engine = FUNC1(imem);
	return FUNC0(parent, engine, &nv50_instobj_oclass,
				   (void *)(unsigned long)align, size, pobject);
}