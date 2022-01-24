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
struct nouveau_namedb {int /*<<< orphan*/  lock; } ;
struct nouveau_handle {int dummy; } ;

/* Variables and functions */
 struct nouveau_handle* FUNC0 (struct nouveau_namedb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct nouveau_handle *
FUNC3(struct nouveau_namedb *namedb, u32 name)
{
	struct nouveau_handle *handle;
	FUNC1(&namedb->lock);
	handle = FUNC0(namedb, name);
	if (handle == NULL)
		FUNC2(&namedb->lock);
	return handle;
}