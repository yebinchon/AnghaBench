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
struct mapped_device {int dummy; } ;
struct gendisk {int /*<<< orphan*/  disk_name; } ;
struct dm_table {int integrity_supported; int /*<<< orphan*/  md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct gendisk*,struct gendisk*) ; 
 scalar_t__ FUNC2 (struct gendisk*) ; 
 int FUNC3 (struct gendisk*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct gendisk* FUNC5 (struct mapped_device*) ; 
 struct gendisk* FUNC6 (struct dm_table*,int) ; 

__attribute__((used)) static int FUNC7(struct dm_table *t, struct mapped_device *md)
{
	struct gendisk *template_disk = NULL;

	template_disk = FUNC6(t, false);
	if (!template_disk)
		return 0;

	if (!FUNC2(FUNC5(md))) {
		t->integrity_supported = 1;
		return FUNC3(FUNC5(md), NULL);
	}

	/*
	 * If DM device already has an initalized integrity
	 * profile the new profile should not conflict.
	 */
	if (FUNC2(template_disk) &&
	    FUNC1(FUNC5(md), template_disk) < 0) {
		FUNC0("%s: conflict with existing integrity profile: "
		       "%s profile mismatch",
		       FUNC4(t->md),
		       template_disk->disk_name);
		return 1;
	}

	/* Preserve existing initialized integrity profile */
	t->integrity_supported = 1;
	return 0;
}