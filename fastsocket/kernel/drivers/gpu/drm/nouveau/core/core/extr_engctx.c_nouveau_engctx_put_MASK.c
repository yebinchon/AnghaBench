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
struct nouveau_object {int /*<<< orphan*/  engine; } ;
struct nouveau_engine {int /*<<< orphan*/  lock; } ;
struct nouveau_engctx {int /*<<< orphan*/  save; } ;

/* Variables and functions */
 struct nouveau_engctx* FUNC0 (struct nouveau_object*) ; 
 struct nouveau_engine* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(struct nouveau_object *object)
{
	if (object) {
		struct nouveau_engine *engine = FUNC1(object->engine);
		struct nouveau_engctx *engctx = FUNC0(object);
		FUNC2(&engine->lock, engctx->save);
	}
}