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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int limit; int dma_bits; int pgt_bits; int spg_shift; int lpg_shift; int /*<<< orphan*/  flush; int /*<<< orphan*/  unmap; int /*<<< orphan*/  map_sg; int /*<<< orphan*/  create; } ;
struct nv04_vmmgr_priv {TYPE_3__* vm; TYPE_2__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_gpuobj {int dummy; } ;
struct TYPE_6__ {TYPE_1__* pgt; } ;
struct TYPE_4__ {int* refcount; struct nouveau_gpuobj** obj; } ;

/* Variables and functions */
 int NV04_PDMA_PAGE ; 
 int NV04_PDMA_SIZE ; 
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 int FUNC0 (struct nouveau_object*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,struct nouveau_gpuobj**) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,TYPE_3__**) ; 
 int FUNC2 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,char*,char*,struct nv04_vmmgr_priv**) ; 
 int /*<<< orphan*/  nv04_vm_create ; 
 int /*<<< orphan*/  nv04_vm_flush ; 
 int /*<<< orphan*/  nv04_vm_map_sg ; 
 int /*<<< orphan*/  nv04_vm_unmap ; 
 struct nouveau_object* FUNC3 (struct nv04_vmmgr_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_gpuobj*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_object *parent, struct nouveau_object *engine,
		struct nouveau_oclass *oclass, void *data, u32 size,
		struct nouveau_object **pobject)
{
	struct nv04_vmmgr_priv *priv;
	struct nouveau_gpuobj *dma;
	int ret;

	ret = FUNC2(parent, engine, oclass, "PCIGART",
				   "pcigart", &priv);
	*pobject = FUNC3(priv);
	if (ret)
		return ret;

	priv->base.create = nv04_vm_create;
	priv->base.limit = NV04_PDMA_SIZE;
	priv->base.dma_bits = 32;
	priv->base.pgt_bits = 32 - 12;
	priv->base.spg_shift = 12;
	priv->base.lpg_shift = 12;
	priv->base.map_sg = nv04_vm_map_sg;
	priv->base.unmap = nv04_vm_unmap;
	priv->base.flush = nv04_vm_flush;

	ret = FUNC1(&priv->base, 0, NV04_PDMA_SIZE, 0, 4096,
				&priv->vm);
	if (ret)
		return ret;

	ret = FUNC0(parent, NULL,
				 (NV04_PDMA_SIZE / NV04_PDMA_PAGE) * 4 +
				 8, 16, NVOBJ_FLAG_ZERO_ALLOC,
				 &priv->vm->pgt[0].obj[0]);
	dma = priv->vm->pgt[0].obj[0];
	priv->vm->pgt[0].refcount[0] = 1;
	if (ret)
		return ret;

	FUNC4(dma, 0x00000, 0x0002103d); /* PCI, RW, PT, !LN */
	FUNC4(dma, 0x00004, NV04_PDMA_SIZE - 1);
	return 0;
}