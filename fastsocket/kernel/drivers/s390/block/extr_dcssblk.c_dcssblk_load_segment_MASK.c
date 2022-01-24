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
struct segment_info {int segment_type; int /*<<< orphan*/  lh; int /*<<< orphan*/  segment_name; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEGMENT_SHARED ; 
 int /*<<< orphan*/  dcssblk_devices_sem ; 
 struct segment_info* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct segment_info*) ; 
 struct segment_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(char *name, struct segment_info **seg_info)
{
	int rc;

	/* already loaded? */
	FUNC2(&dcssblk_devices_sem);
	*seg_info = FUNC1(name);
	FUNC8(&dcssblk_devices_sem);
	if (*seg_info != NULL)
		return -EEXIST;

	/* get a struct segment_info */
	*seg_info = FUNC4(sizeof(struct segment_info), GFP_KERNEL);
	if (*seg_info == NULL)
		return -ENOMEM;

	FUNC7((*seg_info)->segment_name, name);

	/* load the segment */
	rc = FUNC5(name, SEGMENT_SHARED,
			&(*seg_info)->start, &(*seg_info)->end);
	if (rc < 0) {
		FUNC6(rc, (*seg_info)->segment_name);
		FUNC3(*seg_info);
	} else {
		FUNC0(&(*seg_info)->lh);
		(*seg_info)->segment_type = rc;
	}
	return rc;
}