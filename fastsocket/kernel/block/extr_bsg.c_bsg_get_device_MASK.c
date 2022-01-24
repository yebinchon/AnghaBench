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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct bsg_device {int dummy; } ;
struct bsg_class_device {int /*<<< orphan*/  ref; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct bsg_device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bsg_device*) ; 
 struct bsg_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bsg_device* FUNC3 (struct inode*,int /*<<< orphan*/ ,struct file*) ; 
 int /*<<< orphan*/  bsg_kref_release_function ; 
 int /*<<< orphan*/  bsg_minor_idr ; 
 int /*<<< orphan*/  bsg_mutex ; 
 struct bsg_class_device* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct bsg_device *FUNC10(struct inode *inode, struct file *file)
{
	struct bsg_device *bd;
	struct bsg_class_device *bcd;

	/*
	 * find the class device
	 */
	FUNC8(&bsg_mutex);
	bcd = FUNC4(&bsg_minor_idr, FUNC5(inode));
	if (bcd)
		FUNC6(&bcd->ref);
	FUNC9(&bsg_mutex);

	if (!bcd)
		return FUNC0(-ENODEV);

	bd = FUNC2(FUNC5(inode), bcd->queue);
	if (bd)
		return bd;

	bd = FUNC3(inode, bcd->queue, file);
	if (FUNC1(bd))
		FUNC7(&bcd->ref, bsg_kref_release_function);

	return bd;
}