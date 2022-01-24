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
struct nvc0_fb_priv {int /*<<< orphan*/  base; scalar_t__ r100c10_page; int /*<<< orphan*/  r100c10; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_device {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nouveau_device* FUNC2 (struct nouveau_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_object *object)
{
	struct nouveau_device *device = FUNC2(object);
	struct nvc0_fb_priv *priv = (void *)object;

	if (priv->r100c10_page) {
		FUNC3(device->pdev, priv->r100c10, PAGE_SIZE,
			       PCI_DMA_BIDIRECTIONAL);
		FUNC0(priv->r100c10_page);
	}

	FUNC1(&priv->base);
}