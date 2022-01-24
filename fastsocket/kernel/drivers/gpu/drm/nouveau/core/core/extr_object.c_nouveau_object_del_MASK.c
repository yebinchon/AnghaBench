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
struct nouveau_handle {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  NV_NAMEDB_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_handle*,int) ; 
 struct nouveau_object* FUNC2 (struct nouveau_object*,int /*<<< orphan*/ ) ; 
 struct nouveau_handle* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_handle*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct nouveau_object**) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_object*) ; 
 struct nouveau_object* FUNC7 (struct nouveau_object*,int /*<<< orphan*/ ) ; 

int
FUNC8(struct nouveau_object *client, u32 _parent, u32 _handle)
{
	struct nouveau_object *parent = NULL;
	struct nouveau_object *namedb = NULL;
	struct nouveau_handle *handle = NULL;

	parent = FUNC2(client, _parent);
	if (!parent)
		return -ENOENT;

	namedb = FUNC7(parent, NV_NAMEDB_CLASS);
	if (namedb) {
		handle = FUNC3(FUNC6(namedb), _handle);
		if (handle) {
			FUNC4(handle);
			FUNC1(handle, false);
			FUNC0(handle);
		}
	}

	FUNC5(NULL, &parent);
	return handle ? 0 : -EINVAL;
}