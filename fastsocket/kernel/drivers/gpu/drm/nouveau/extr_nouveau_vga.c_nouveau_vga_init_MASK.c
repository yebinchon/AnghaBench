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
struct nouveau_drm {struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  nouveau_switcheroo_ops ; 
 int /*<<< orphan*/  nouveau_vga_set_decode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(struct nouveau_drm *drm)
{
	struct drm_device *dev = drm->dev;
	FUNC0(dev->pdev, dev, NULL, nouveau_vga_set_decode);
	FUNC1(dev->pdev, &nouveau_switcheroo_ops);
}