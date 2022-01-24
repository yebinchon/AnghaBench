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
struct nouveau_device {int /*<<< orphan*/  cfgopt; int /*<<< orphan*/  pdev; } ;
struct TYPE_6__ {TYPE_1__* pgt; } ;
struct TYPE_4__ {int* refcount; int /*<<< orphan*/ * obj; } ;

/* Variables and functions */
 int NV41_GART_PAGE ; 
 int NV41_GART_SIZE ; 
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 int /*<<< orphan*/  PCI_CAP_ID_AGP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct nouveau_object*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nouveau_object*,struct nouveau_object*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,struct nouveau_object**) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,TYPE_3__**) ; 
 int FUNC4 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,char*,char*,struct nv04_vmmgr_priv**) ; 
 int /*<<< orphan*/  nv04_vm_create ; 
 int /*<<< orphan*/  nv04_vmmgr_oclass ; 
 int /*<<< orphan*/  nv41_vm_flush ; 
 int /*<<< orphan*/  nv41_vm_map_sg ; 
 int /*<<< orphan*/  nv41_vm_unmap ; 
 struct nouveau_device* FUNC5 (struct nouveau_object*) ; 
 struct nouveau_object* FUNC6 (struct nv04_vmmgr_priv*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct nouveau_object *parent, struct nouveau_object *engine,
		struct nouveau_oclass *oclass, void *data, u32 size,
		struct nouveau_object **pobject)
{
	struct nouveau_device *device = FUNC5(parent);
	struct nv04_vmmgr_priv *priv;
	int ret;

	if (FUNC7(device->pdev, PCI_CAP_ID_AGP) ||
	    !FUNC0(device->cfgopt, "NvPCIE", true)) {
		return FUNC2(parent, engine, &nv04_vmmgr_oclass,
					   data, size, pobject);
	}

	ret = FUNC4(parent, engine, oclass, "PCIEGART",
				   "pciegart", &priv);
	*pobject = FUNC6(priv);
	if (ret)
		return ret;

	priv->base.create = nv04_vm_create;
	priv->base.limit = NV41_GART_SIZE;
	priv->base.dma_bits = 39;
	priv->base.pgt_bits = 32 - 12;
	priv->base.spg_shift = 12;
	priv->base.lpg_shift = 12;
	priv->base.map_sg = nv41_vm_map_sg;
	priv->base.unmap = nv41_vm_unmap;
	priv->base.flush = nv41_vm_flush;

	ret = FUNC3(&priv->base, 0, NV41_GART_SIZE, 0, 4096,
				&priv->vm);
	if (ret)
		return ret;

	ret = FUNC1(parent, NULL,
				(NV41_GART_SIZE / NV41_GART_PAGE) * 4,
				 16, NVOBJ_FLAG_ZERO_ALLOC,
				 &priv->vm->pgt[0].obj[0]);
	priv->vm->pgt[0].refcount[0] = 1;
	if (ret)
		return ret;

	return 0;
}