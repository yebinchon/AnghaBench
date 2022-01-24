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
typedef  int /*<<< orphan*/  uint32_t ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_device* FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint32_t FUNC2(struct drm_device *dev, uint32_t reg)
{
	struct nouveau_device *device = FUNC0(dev);
	return FUNC1(device, reg);
}