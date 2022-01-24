#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nv50_bar_priv {TYPE_5__* bar3; TYPE_3__* bar1; TYPE_1__* mem; int /*<<< orphan*/  base; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_10__ {TYPE_4__* node; } ;
struct TYPE_9__ {int offset; } ;
struct TYPE_8__ {TYPE_2__* node; } ;
struct TYPE_7__ {int offset; } ;
struct TYPE_6__ {int addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nv50_bar_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nv50_bar_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct nv50_bar_priv*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_object *object)
{
	struct nv50_bar_priv *priv = (void *)object;
	int ret;

	ret = FUNC0(&priv->base);
	if (ret)
		return ret;

	FUNC2(priv, 0x000200, 0x00000100, 0x00000000);
	FUNC2(priv, 0x000200, 0x00000100, 0x00000100);
	FUNC1(FUNC3(priv), 6);

	FUNC4(priv, 0x001704, 0x00000000 | priv->mem->addr >> 12);
	FUNC4(priv, 0x001704, 0x40000000 | priv->mem->addr >> 12);
	FUNC4(priv, 0x001708, 0x80000000 | priv->bar1->node->offset >> 4);
	FUNC4(priv, 0x00170c, 0x80000000 | priv->bar3->node->offset >> 4);
	return 0;
}