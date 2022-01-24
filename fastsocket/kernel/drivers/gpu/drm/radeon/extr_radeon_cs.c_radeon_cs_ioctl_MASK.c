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
struct radeon_device {int /*<<< orphan*/  exclusive_lock; int /*<<< orphan*/  family; int /*<<< orphan*/  dev; int /*<<< orphan*/  accel_working; } ;
struct radeon_cs_parser {int /*<<< orphan*/  family; int /*<<< orphan*/  dev; struct radeon_device* rdev; struct drm_file* filp; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EBUSY ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_cs_parser*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct radeon_device*,int) ; 
 int FUNC4 (struct radeon_device*,struct radeon_cs_parser*) ; 
 int FUNC5 (struct radeon_device*,struct radeon_cs_parser*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_cs_parser*,int) ; 
 int FUNC7 (struct radeon_cs_parser*,void*) ; 
 int FUNC8 (struct radeon_cs_parser*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct drm_device *dev, void *data, struct drm_file *filp)
{
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_cs_parser parser;
	int r;

	FUNC1(&rdev->exclusive_lock);
	if (!rdev->accel_working) {
		FUNC9(&rdev->exclusive_lock);
		return -EBUSY;
	}
	/* initialize parser */
	FUNC2(&parser, 0, sizeof(struct radeon_cs_parser));
	parser.filp = filp;
	parser.rdev = rdev;
	parser.dev = rdev->dev;
	parser.family = rdev->family;
	r = FUNC7(&parser, data);
	if (r) {
		FUNC0("Failed to initialize parser !\n");
		FUNC6(&parser, r);
		FUNC9(&rdev->exclusive_lock);
		r = FUNC3(rdev, r);
		return r;
	}
	r = FUNC8(&parser);
	if (r) {
		if (r != -ERESTARTSYS)
			FUNC0("Failed to parse relocation %d!\n", r);
		FUNC6(&parser, r);
		FUNC9(&rdev->exclusive_lock);
		r = FUNC3(rdev, r);
		return r;
	}
	r = FUNC4(rdev, &parser);
	if (r) {
		goto out;
	}
	r = FUNC5(rdev, &parser);
	if (r) {
		goto out;
	}
out:
	FUNC6(&parser, r);
	FUNC9(&rdev->exclusive_lock);
	r = FUNC3(rdev, r);
	return r;
}