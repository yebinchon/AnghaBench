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
struct drm_sg_mem {scalar_t__ handle; int /*<<< orphan*/  virtual; } ;
struct drm_scatter_gather {scalar_t__ handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct drm_sg_mem* sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_SG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_sg_mem*) ; 

int FUNC3(struct drm_device *dev, void *data,
		struct drm_file *file_priv)
{
	struct drm_scatter_gather *request = data;
	struct drm_sg_mem *entry;

	if (!FUNC1(dev, DRIVER_SG))
		return -EINVAL;

	entry = dev->sg;
	dev->sg = NULL;

	if (!entry || entry->handle != request->handle)
		return -EINVAL;

	FUNC0("virtual  = %p\n", entry->virtual);

	FUNC2(entry);

	return 0;
}