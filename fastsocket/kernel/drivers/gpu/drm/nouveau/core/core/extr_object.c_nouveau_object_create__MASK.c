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
struct nouveau_oclass {int /*<<< orphan*/  handle; } ;
struct nouveau_object {int /*<<< orphan*/  list; int /*<<< orphan*/  _magic; int /*<<< orphan*/  usecount; int /*<<< orphan*/  refcount; struct nouveau_oclass* oclass; int /*<<< orphan*/  engine; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NOUVEAU_OBJECT_MAGIC ; 
 int /*<<< orphan*/  _objlist ; 
 int /*<<< orphan*/  _objlist_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct nouveau_object *parent,
		       struct nouveau_object *engine,
		       struct nouveau_oclass *oclass, u32 pclass,
		       int size, void **pobject)
{
	struct nouveau_object *object;

	object = *pobject = FUNC1(size, GFP_KERNEL);
	if (!object)
		return -ENOMEM;

	FUNC3(parent, &object->parent);
	FUNC3(engine, &object->engine);
	object->oclass = oclass;
	object->oclass->handle |= pclass;
	FUNC0(&object->refcount, 1);
	FUNC0(&object->usecount, 0);

#ifdef NOUVEAU_OBJECT_MAGIC
	object->_magic = NOUVEAU_OBJECT_MAGIC;
	spin_lock(&_objlist_lock);
	list_add(&object->list, &_objlist);
	spin_unlock(&_objlist_lock);
#endif
	return 0;
}