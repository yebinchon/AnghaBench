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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  flush; int /*<<< orphan*/  unmap; int /*<<< orphan*/  umap; int /*<<< orphan*/  kmap; int /*<<< orphan*/  alloc; } ;
struct nv50_bar_priv {int /*<<< orphan*/  lock; TYPE_2__ base; struct nv50_bar_priv* bar1; struct nv50_bar_priv* pgd; struct nouveau_vm* bar1_vm; struct nv50_bar_priv* bar3; struct nouveau_vm* bar3_vm; struct nv50_bar_priv* pad; struct nv50_bar_priv* mem; } ;
struct nouveau_vm {TYPE_1__* pgt; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_device {int chipset; int /*<<< orphan*/  pdev; } ;
struct TYPE_3__ {int* refcount; struct nv50_bar_priv** obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVOBJ_FLAG_HEAP ; 
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  nouveau_bar_alloc ; 
 int FUNC1 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv50_bar_priv**) ; 
 int FUNC2 (struct nouveau_object*,struct nouveau_object*,int,int,int /*<<< orphan*/ ,struct nv50_bar_priv**) ; 
 int FUNC3 (struct nouveau_device*,int,int,int,struct nouveau_vm**) ; 
 int FUNC4 (struct nouveau_vm*,struct nouveau_vm**,struct nv50_bar_priv*) ; 
 int /*<<< orphan*/  nv50_bar_flush ; 
 int /*<<< orphan*/  nv50_bar_kmap ; 
 int /*<<< orphan*/  nv50_bar_umap ; 
 int /*<<< orphan*/  nv50_bar_unmap ; 
 int /*<<< orphan*/  nv84_bar_flush ; 
 struct nouveau_device* FUNC5 (struct nouveau_object*) ; 
 struct nouveau_object* FUNC6 (struct nv50_bar_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct nv50_bar_priv*,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(struct nouveau_object *parent, struct nouveau_object *engine,
	      struct nouveau_oclass *oclass, void *data, u32 size,
	      struct nouveau_object **pobject)
{
	struct nouveau_device *device = FUNC5(parent);
	struct nouveau_object *heap;
	struct nouveau_vm *vm;
	struct nv50_bar_priv *priv;
	u64 start, limit;
	int ret;

	ret = FUNC1(parent, engine, oclass, &priv);
	*pobject = FUNC6(priv);
	if (ret)
		return ret;

	ret = FUNC2(parent, NULL, 0x20000, 0, NVOBJ_FLAG_HEAP,
				&priv->mem);
	heap = FUNC6(priv->mem);
	if (ret)
		return ret;

	ret = FUNC2(parent, heap, (device->chipset == 0x50) ?
				 0x1400 : 0x0200, 0, 0, &priv->pad);
	if (ret)
		return ret;

	ret = FUNC2(parent, heap, 0x4000, 0, 0, &priv->pgd);
	if (ret)
		return ret;

	/* BAR3 */
	start = 0x0100000000ULL;
	limit = start + FUNC8(device->pdev, 3);

	ret = FUNC3(device, start, limit, start, &vm);
	if (ret)
		return ret;

	ret = FUNC2(parent, heap, ((limit-- - start) >> 12) * 8,
				 0x1000, NVOBJ_FLAG_ZERO_ALLOC,
				 &vm->pgt[0].obj[0]);
	vm->pgt[0].refcount[0] = 1;
	if (ret)
		return ret;

	ret = FUNC4(vm, &priv->bar3_vm, priv->pgd);
	FUNC4(NULL, &vm, NULL);
	if (ret)
		return ret;

	ret = FUNC2(parent, heap, 24, 16, 0, &priv->bar3);
	if (ret)
		return ret;

	FUNC7(priv->bar3, 0x00, 0x7fc00000);
	FUNC7(priv->bar3, 0x04, FUNC0(limit));
	FUNC7(priv->bar3, 0x08, FUNC0(start));
	FUNC7(priv->bar3, 0x0c, FUNC10(limit) << 24 |
				  FUNC10(start));
	FUNC7(priv->bar3, 0x10, 0x00000000);
	FUNC7(priv->bar3, 0x14, 0x00000000);

	/* BAR1 */
	start = 0x0000000000ULL;
	limit = start + FUNC8(device->pdev, 1);

	ret = FUNC3(device, start, limit--, start, &vm);
	if (ret)
		return ret;

	ret = FUNC4(vm, &priv->bar1_vm, priv->pgd);
	FUNC4(NULL, &vm, NULL);
	if (ret)
		return ret;

	ret = FUNC2(parent, heap, 24, 16, 0, &priv->bar1);
	if (ret)
		return ret;

	FUNC7(priv->bar1, 0x00, 0x7fc00000);
	FUNC7(priv->bar1, 0x04, FUNC0(limit));
	FUNC7(priv->bar1, 0x08, FUNC0(start));
	FUNC7(priv->bar1, 0x0c, FUNC10(limit) << 24 |
				  FUNC10(start));
	FUNC7(priv->bar1, 0x10, 0x00000000);
	FUNC7(priv->bar1, 0x14, 0x00000000);

	priv->base.alloc = nouveau_bar_alloc;
	priv->base.kmap = nv50_bar_kmap;
	priv->base.umap = nv50_bar_umap;
	priv->base.unmap = nv50_bar_unmap;
	if (device->chipset == 0x50)
		priv->base.flush = nv50_bar_flush;
	else
		priv->base.flush = nv84_bar_flush;
	FUNC9(&priv->lock);
	return 0;
}