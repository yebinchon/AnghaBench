#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int func; } ;
typedef  TYPE_1__ drm_via_init_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
#define  VIA_CLEANUP_MAP 129 
#define  VIA_INIT_MAP 128 
 int FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*,TYPE_1__*) ; 

int FUNC3(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_via_init_t *init = data;

	FUNC0("\n");

	switch (init->func) {
	case VIA_INIT_MAP:
		return FUNC2(dev, init);
	case VIA_CLEANUP_MAP:
		return FUNC1(dev);
	}

	return -EINVAL;
}