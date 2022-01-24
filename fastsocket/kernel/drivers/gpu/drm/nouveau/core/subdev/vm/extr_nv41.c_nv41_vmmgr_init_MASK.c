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
struct nv04_vmmgr_priv {int /*<<< orphan*/  base; TYPE_2__* vm; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_gpuobj {int addr; } ;
struct TYPE_4__ {TYPE_1__* pgt; } ;
struct TYPE_3__ {struct nouveau_gpuobj** obj; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nv04_vmmgr_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nv04_vmmgr_priv*,int,int) ; 

__attribute__((used)) static int
FUNC3(struct nouveau_object *object)
{
	struct nv04_vmmgr_priv *priv = (void *)object;
	struct nouveau_gpuobj *dma = priv->vm->pgt[0].obj[0];
	int ret;

	ret = FUNC0(&priv->base);
	if (ret)
		return ret;

	FUNC2(priv, 0x100800, dma->addr | 0x00000002);
	FUNC1(priv, 0x10008c, 0x00000100, 0x00000100);
	FUNC2(priv, 0x100820, 0x00000000);
	return 0;
}