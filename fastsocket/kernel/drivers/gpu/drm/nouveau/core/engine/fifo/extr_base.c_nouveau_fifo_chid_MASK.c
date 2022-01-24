#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nouveau_object {struct nouveau_object* parent; } ;
struct nouveau_fifo {struct nouveau_fifo* parent; } ;
struct TYPE_2__ {int chid; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV_ENGCTX_CLASS ; 
 TYPE_1__* FUNC0 (struct nouveau_object*) ; 
 int FUNC1 (struct nouveau_object*) ; 
 scalar_t__ FUNC2 (struct nouveau_object*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct nouveau_fifo *priv, struct nouveau_object *object)
{
	int engidx = FUNC1(priv) & 0xff;

	while (object && object->parent) {
		if ( FUNC2(object->parent, NV_ENGCTX_CLASS) &&
		    (FUNC1(object->parent) & 0xff) == engidx)
			return FUNC0(object)->chid;
		object = object->parent;
	}

	return -1;
}