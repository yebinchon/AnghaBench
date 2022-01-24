#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct intel_set_config {scalar_t__ mode_changed; scalar_t__ fb_changed; } ;
struct drm_mode_set {scalar_t__ num_connectors; TYPE_4__* fb; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/ * mode; TYPE_3__* crtc; } ;
struct drm_device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_10__ {TYPE_1__ base; } ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
struct TYPE_9__ {TYPE_2__ base; TYPE_4__* fb; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  mode; struct drm_device* dev; int /*<<< orphan*/  helper_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_device*,struct drm_mode_set*,struct intel_set_config*) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_mode_set*,struct intel_set_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_set_config*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,struct intel_set_config*) ; 
 int FUNC9 (struct drm_device*,struct intel_set_config*) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 struct intel_set_config* FUNC11 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct drm_mode_set *set)
{
	struct drm_device *dev;
	struct drm_mode_set save_set;
	struct intel_set_config *config;
	int ret;

	FUNC0(!set);
	FUNC0(!set->crtc);
	FUNC0(!set->crtc->helper_private);

	/* Enforce sane interface api - has been abused by the fb helper. */
	FUNC0(!set->mode && set->fb);
	FUNC0(set->fb && set->num_connectors == 0);

	if (set->fb) {
		FUNC1("[CRTC:%d] [FB:%d] #connectors=%d (x y) (%i %i)\n",
				set->crtc->base.id, set->fb->base.id,
				(int)set->num_connectors, set->x, set->y);
	} else {
		FUNC1("[CRTC:%d] [NOFB]\n", set->crtc->base.id);
	}

	dev = set->crtc->dev;

	ret = -ENOMEM;
	config = FUNC11(sizeof(*config), GFP_KERNEL);
	if (!config)
		goto out_config;

	ret = FUNC9(dev, config);
	if (ret)
		goto out_config;

	save_set.crtc = set->crtc;
	save_set.mode = &set->crtc->mode;
	save_set.x = set->crtc->x;
	save_set.y = set->crtc->y;
	save_set.fb = set->crtc->fb;

	/* Compute whether we need a full modeset, only an fb base update or no
	 * change at all. In the future we might also check whether only the
	 * mode changed, e.g. for LVDS where we only change the panel fitter in
	 * such cases. */
	FUNC6(set, config);

	ret = FUNC4(dev, set, config);
	if (ret)
		goto fail;

	if (config->mode_changed) {
		if (set->mode) {
			FUNC1("attempting to set mode from"
					" userspace\n");
			FUNC3(set->mode);
		}

		ret = FUNC10(set->crtc, set->mode,
				     set->x, set->y, set->fb);
		if (ret) {
			FUNC2("failed to set mode on [CRTC:%d], err = %d\n",
				  set->crtc->base.id, ret);
			goto fail;
		}
	} else if (config->fb_changed) {
		ret = FUNC5(set->crtc,
					  set->x, set->y, set->fb);
	}

	FUNC7(config);

	return 0;

fail:
	FUNC8(dev, config);

	/* Try to restore the config */
	if (config->mode_changed &&
	    FUNC10(save_set.crtc, save_set.mode,
			   save_set.x, save_set.y, save_set.fb))
		FUNC2("failed to restore config after modeset failure\n");

out_config:
	FUNC7(config);
	return ret;
}