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
typedef  int u32 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_namedb {int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NV_NAMEDB_CLASS ; 
 int FUNC1 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,struct nouveau_oclass*,int,int,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct nouveau_object *parent,
		       struct nouveau_object *engine,
		       struct nouveau_oclass *oclass, u32 pclass,
		       struct nouveau_oclass *sclass, u32 engcls,
		       int length, void **pobject)
{
	struct nouveau_namedb *namedb;
	int ret;

	ret = FUNC1(parent, engine, oclass, pclass |
				     NV_NAMEDB_CLASS, sclass, engcls,
				     length, pobject);
	namedb = *pobject;
	if (ret)
		return ret;

	FUNC2(&namedb->lock);
	FUNC0(&namedb->list);
	return 0;
}