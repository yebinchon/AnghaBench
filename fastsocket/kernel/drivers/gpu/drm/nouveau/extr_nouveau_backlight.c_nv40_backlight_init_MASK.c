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
struct nouveau_drm {struct backlight_device* backlight; int /*<<< orphan*/  device; } ;
struct nouveau_device {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  kdev; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int max_brightness; int /*<<< orphan*/  brightness; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  NV40_PMC_BACKLIGHT ; 
 int NV40_PMC_BACKLIGHT_MASK ; 
 int FUNC1 (struct backlight_device*) ; 
 struct backlight_device* FUNC2 (char*,int /*<<< orphan*/ *,struct nouveau_drm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 
 struct nouveau_drm* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv40_bl_ops ; 
 int /*<<< orphan*/  FUNC5 (struct backlight_device*) ; 
 struct nouveau_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nouveau_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct drm_connector *connector)
{
	struct nouveau_drm *drm = FUNC4(connector->dev);
	struct nouveau_device *device = FUNC6(drm->device);
	struct backlight_device *bd;

	if (!(FUNC7(device, NV40_PMC_BACKLIGHT) & NV40_PMC_BACKLIGHT_MASK))
		return 0;

	bd = FUNC2("nv_backlight", &connector->kdev, drm,
				       &nv40_bl_ops);
	if (FUNC0(bd))
		return FUNC1(bd);
	drm->backlight = bd;
	bd->props.brightness = FUNC5(bd);
	bd->props.max_brightness = 31;
	FUNC3(bd);

	return 0;
}