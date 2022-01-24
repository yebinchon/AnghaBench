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
struct drm_property_blob {int length; int /*<<< orphan*/  head; int /*<<< orphan*/  data; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  property_blob_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_OBJECT_BLOB ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_property_blob*) ; 
 struct drm_property_blob* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static struct drm_property_blob *FUNC5(struct drm_device *dev, int length,
							  void *data)
{
	struct drm_property_blob *blob;
	int ret;

	if (!length || !data)
		return NULL;

	blob = FUNC2(sizeof(struct drm_property_blob)+length, GFP_KERNEL);
	if (!blob)
		return NULL;

	ret = FUNC0(dev, &blob->base, DRM_MODE_OBJECT_BLOB);
	if (ret) {
		FUNC1(blob);
		return NULL;
	}

	blob->length = length;

	FUNC4(blob->data, data, length);

	FUNC3(&blob->head, &dev->mode_config.property_blob_list);
	return blob;
}