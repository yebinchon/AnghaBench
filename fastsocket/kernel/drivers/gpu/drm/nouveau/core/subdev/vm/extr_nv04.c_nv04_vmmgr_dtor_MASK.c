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
struct nv04_vmmgr_priv {int /*<<< orphan*/  base; int /*<<< orphan*/  null; scalar_t__ nullp; TYPE_3__* vm; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_6__ {TYPE_1__* pgt; } ;
struct TYPE_5__ {int /*<<< orphan*/  pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (struct nv04_vmmgr_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC5(struct nouveau_object *object)
{
	struct nv04_vmmgr_priv *priv = (void *)object;
	if (priv->vm) {
		FUNC0(NULL, &priv->vm->pgt[0].obj[0]);
		FUNC1(NULL, &priv->vm, NULL);
	}
	if (priv->nullp) {
		FUNC4(FUNC3(priv)->pdev, 16 * 1024,
				    priv->nullp, priv->null);
	}
	FUNC2(&priv->base);
}