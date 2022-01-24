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
struct nouveau_i2c {int (* identify ) (struct nouveau_i2c*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_drm* FUNC0 (struct drm_device*) ; 
 struct nouveau_i2c* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv04_tv_encoder_info ; 
 int FUNC2 (struct nouveau_i2c*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct drm_device *dev, int i2c_index)
{
	struct nouveau_drm *drm = FUNC0(dev);
	struct nouveau_i2c *i2c = FUNC1(drm->device);

	return i2c->identify(i2c, i2c_index, "TV encoder",
			     nv04_tv_encoder_info, NULL);
}