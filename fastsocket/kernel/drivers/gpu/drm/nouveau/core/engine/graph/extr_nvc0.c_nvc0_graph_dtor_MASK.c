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
struct nvc0_graph_priv {int /*<<< orphan*/  base; int /*<<< orphan*/  unk4188b4; int /*<<< orphan*/  unk4188b8; int /*<<< orphan*/  fuc41ad; int /*<<< orphan*/  fuc41ac; int /*<<< orphan*/  fuc409d; int /*<<< orphan*/  fuc409c; int /*<<< orphan*/  data; } ;
struct nouveau_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct nouveau_object *object)
{
	struct nvc0_graph_priv *priv = (void *)object;

	FUNC0(priv->data);

	FUNC3(&priv->fuc409c);
	FUNC3(&priv->fuc409d);
	FUNC3(&priv->fuc41ac);
	FUNC3(&priv->fuc41ad);

	FUNC1(NULL, &priv->unk4188b8);
	FUNC1(NULL, &priv->unk4188b4);

	FUNC2(&priv->base);
}