#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mem; int /*<<< orphan*/  bar; } ;
struct nve0_fifo_priv {int /*<<< orphan*/  base; TYPE_2__* engine; TYPE_1__ user; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * playlist; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_object *object)
{
	struct nve0_fifo_priv *priv = (void *)object;
	int i;

	FUNC3(&priv->user.bar);
	FUNC2(NULL, &priv->user.mem);

	for (i = 0; i < FUNC0(priv->engine); i++) {
		FUNC2(NULL, &priv->engine[i].playlist[1]);
		FUNC2(NULL, &priv->engine[i].playlist[0]);
	}

	FUNC1(&priv->base);
}