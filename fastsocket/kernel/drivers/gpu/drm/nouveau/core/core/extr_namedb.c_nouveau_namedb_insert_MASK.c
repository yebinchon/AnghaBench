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
struct nouveau_object {int dummy; } ;
struct nouveau_namedb {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct nouveau_handle {int /*<<< orphan*/  node; struct nouveau_namedb* namedb; int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_namedb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct nouveau_namedb *namedb, u32 name,
		      struct nouveau_object *object,
		      struct nouveau_handle *handle)
{
	int ret = -EEXIST;
	FUNC3(&namedb->lock);
	if (!FUNC1(namedb, name)) {
		FUNC2(object, &handle->object);
		handle->namedb = namedb;
		FUNC0(&handle->node, &namedb->list);
		ret = 0;
	}
	FUNC4(&namedb->lock);
	return ret;
}