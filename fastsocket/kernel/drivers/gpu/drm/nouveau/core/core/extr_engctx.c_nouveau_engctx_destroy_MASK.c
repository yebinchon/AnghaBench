#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nouveau_object {int dummy; } ;
struct nouveau_engine {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  base; scalar_t__ size; } ;
struct nouveau_engctx {TYPE_3__ base; int /*<<< orphan*/  head; int /*<<< orphan*/  vma; } ;
struct nouveau_client {TYPE_1__* vm; } ;
struct TYPE_5__ {struct nouveau_object* engine; } ;
struct TYPE_4__ {int /*<<< orphan*/ * engref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nouveau_client* FUNC2 (struct nouveau_engctx*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (struct nouveau_object*) ; 
 struct nouveau_engine* FUNC7 (struct nouveau_object*) ; 
 TYPE_2__* FUNC8 (struct nouveau_engctx*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC11(struct nouveau_engctx *engctx)
{
	struct nouveau_object *engobj = FUNC8(engctx)->engine;
	struct nouveau_engine *engine = FUNC7(engobj);
	struct nouveau_client *client = FUNC2(engctx);
	unsigned long save;

	FUNC4(&engctx->vma);
	FUNC9(&engine->lock, save);
	FUNC1(&engctx->head);
	FUNC10(&engine->lock, save);

	if (client->vm)
		FUNC0(&client->vm->engref[FUNC6(engobj)]);

	if (engctx->base.size)
		FUNC3(&engctx->base);
	else
		FUNC5(&engctx->base.base);
}