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
struct nouveau_object {struct nouveau_object* parent; } ;
struct nouveau_handle {int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV_NAMEDB_CLASS ; 
 struct nouveau_handle* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_handle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nouveau_object**) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_object*) ; 

struct nouveau_object *
FUNC5(struct nouveau_object *parent, u32 name)
{
	struct nouveau_object *object = NULL;
	struct nouveau_handle *handle;

	while (!FUNC3(parent, NV_NAMEDB_CLASS))
		parent = parent->parent;

	handle = FUNC0(FUNC4(parent), name);
	if (handle) {
		FUNC2(handle->object, &object);
		FUNC1(handle);
	}

	return object;
}