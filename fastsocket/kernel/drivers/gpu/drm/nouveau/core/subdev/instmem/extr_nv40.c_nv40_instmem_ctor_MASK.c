#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int reserved; int /*<<< orphan*/  alloc; } ;
struct nv04_instmem_priv {int created; int /*<<< orphan*/  ramfc; int /*<<< orphan*/  ramro; int /*<<< orphan*/  ramht; int /*<<< orphan*/  vbios; TYPE_1__ base; int /*<<< orphan*/  heap; int /*<<< orphan*/  iomem; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_device {int chipset; struct pci_dev* pdev; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  NVOBJ_FLAG_ZERO_ALLOC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct nouveau_object*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv04_instmem_priv**) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct nouveau_object*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nv04_instmem_alloc ; 
 scalar_t__ FUNC6 (struct nv04_instmem_priv*) ; 
 struct nouveau_device* FUNC7 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct nv04_instmem_priv*,char*) ; 
 struct nouveau_object* FUNC9 (struct nv04_instmem_priv*) ; 
 int FUNC10 (struct nv04_instmem_priv*,int) ; 
 scalar_t__ FUNC11 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int) ; 
 int FUNC13 (int,int) ; 

__attribute__((used)) static int
FUNC14(struct nouveau_object *parent, struct nouveau_object *engine,
		  struct nouveau_oclass *oclass, void *data, u32 size,
		  struct nouveau_object **pobject)
{
	struct nouveau_device *device = FUNC7(parent);
	struct pci_dev *pdev = device->pdev;
	struct nv04_instmem_priv *priv;
	int ret, bar, vs;

	ret = FUNC3(parent, engine, oclass, &priv);
	*pobject = FUNC9(priv);
	if (ret)
		return ret;

	/* map bar */
	if (FUNC11(pdev, 2))
		bar = 2;
	else
		bar = 3;

	priv->iomem = FUNC1(FUNC12(pdev, bar),
			      FUNC11(pdev, bar));
	if (!priv->iomem) {
		FUNC8(priv, "unable to map PRAMIN BAR\n");
		return -EFAULT;
	}

	/* PRAMIN aperture maps over the end of vram, reserve enough space
	 * to fit graphics contexts for every channel, the magics come
	 * from engine/graph/nv40.c
	 */
	vs = FUNC0((FUNC10(priv, 0x001540) & 0x0000ff00) >> 8);
	if      (device->chipset == 0x40) priv->base.reserved = 0x6aa0 * vs;
	else if (device->chipset  < 0x43) priv->base.reserved = 0x4f00 * vs;
	else if (FUNC6(priv))  priv->base.reserved = 0x4980 * vs;
	else				  priv->base.reserved = 0x4a40 * vs;
	priv->base.reserved += 16 * 1024;
	priv->base.reserved *= 32;		/* per-channel */
	priv->base.reserved += 512 * 1024;	/* pci(e)gart table */
	priv->base.reserved += 512 * 1024;	/* object storage */

	priv->base.reserved = FUNC13(priv->base.reserved, 4096);
	priv->base.alloc    = nv04_instmem_alloc;

	ret = FUNC4(&priv->heap, 0, priv->base.reserved, 1);
	if (ret)
		return ret;

	/* 0x00000-0x10000: reserve for probable vbios image */
	ret = FUNC2(parent, NULL, 0x10000, 0, 0, &priv->vbios);
	if (ret)
		return ret;

	/* 0x10000-0x18000: reserve for RAMHT */
	ret = FUNC5(parent, NULL, 0x08000, 0, &priv->ramht);
	if (ret)
		return ret;

	/* 0x18000-0x18200: reserve for RAMRO
	 * 0x18200-0x20000: padding
	 */
	ret = FUNC2(parent, NULL, 0x08000, 0, 0, &priv->ramro);
	if (ret)
		return ret;

	/* 0x20000-0x21000: reserve for RAMFC
	 * 0x21000-0x40000: padding and some unknown crap
	 */
	ret = FUNC2(parent, NULL, 0x20000, 0,
				 NVOBJ_FLAG_ZERO_ALLOC, &priv->ramfc);
	if (ret)
		return ret;

	priv->created = true;
	return 0;
}