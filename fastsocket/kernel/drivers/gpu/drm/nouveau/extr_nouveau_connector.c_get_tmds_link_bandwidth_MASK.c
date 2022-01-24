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
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct nouveau_connector {TYPE_1__* detected_encoder; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;
struct dcb_output {scalar_t__ location; } ;
struct TYPE_4__ {int chipset; } ;
struct TYPE_3__ {struct dcb_output* dcb; } ;

/* Variables and functions */
 scalar_t__ DCB_LOC_ON_CHIP ; 
 struct nouveau_connector* FUNC0 (struct drm_connector*) ; 
 struct nouveau_drm* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned
FUNC3(struct drm_connector *connector)
{
	struct nouveau_connector *nv_connector = FUNC0(connector);
	struct nouveau_drm *drm = FUNC1(connector->dev);
	struct dcb_output *dcb = nv_connector->detected_encoder->dcb;

	if (dcb->location != DCB_LOC_ON_CHIP ||
	    FUNC2(drm->device)->chipset >= 0x46)
		return 165000;
	else if (FUNC2(drm->device)->chipset >= 0x40)
		return 155000;
	else if (FUNC2(drm->device)->chipset >= 0x18)
		return 135000;
	else
		return 112000;
}