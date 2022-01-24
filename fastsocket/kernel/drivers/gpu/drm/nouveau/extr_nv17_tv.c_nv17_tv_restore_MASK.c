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
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  output; } ;
struct TYPE_6__ {int /*<<< orphan*/  last_dpms; TYPE_1__ restore; } ;
struct TYPE_5__ {int /*<<< orphan*/  saved_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_DPMS_CLEARED ; 
 scalar_t__ NV_PRAMDAC_DACCLK ; 
 TYPE_3__* FUNC1 (struct drm_encoder*) ; 
 scalar_t__ FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;

	FUNC0(dev, 0, NV_PRAMDAC_DACCLK +
				FUNC2(encoder),
				FUNC1(encoder)->restore.output);

	FUNC3(dev, &FUNC4(encoder)->saved_state);

	FUNC1(encoder)->last_dpms = NV_DPMS_CLEARED;
}