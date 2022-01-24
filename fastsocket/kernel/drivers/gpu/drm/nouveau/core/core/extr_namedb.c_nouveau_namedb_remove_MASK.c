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
struct nouveau_namedb {int /*<<< orphan*/  lock; } ;
struct nouveau_handle {int /*<<< orphan*/  node; struct nouveau_object* object; struct nouveau_namedb* namedb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nouveau_object**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct nouveau_handle *handle)
{
	struct nouveau_namedb *namedb = handle->namedb;
	struct nouveau_object *object = handle->object;
	FUNC2(&namedb->lock);
	FUNC0(&handle->node);
	FUNC3(&namedb->lock);
	FUNC1(NULL, &object);
}