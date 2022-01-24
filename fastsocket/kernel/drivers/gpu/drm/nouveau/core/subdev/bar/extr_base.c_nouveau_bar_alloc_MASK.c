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
struct nouveau_object {int dummy; } ;
struct nouveau_mem {int dummy; } ;
struct nouveau_bar {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  nouveau_barobj_oclass ; 
 int FUNC0 (struct nouveau_object*,struct nouveau_object*,int /*<<< orphan*/ *,struct nouveau_mem*,int /*<<< orphan*/ ,struct nouveau_object**) ; 
 struct nouveau_object* FUNC1 (struct nouveau_bar*) ; 

int
FUNC2(struct nouveau_bar *bar, struct nouveau_object *parent,
		  struct nouveau_mem *mem, struct nouveau_object **pobject)
{
	struct nouveau_object *engine = FUNC1(bar);
	return FUNC0(parent, engine, &nouveau_barobj_oclass,
				   mem, 0, pobject);
}