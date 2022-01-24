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
struct switch_request {int /*<<< orphan*/  wait; struct file* file; } ;
struct loop_device {int /*<<< orphan*/  lo_queue; } ;
struct file {int dummy; } ;
struct bio {int /*<<< orphan*/ * bi_bdev; struct switch_request* bi_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct bio* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct loop_device *lo, struct file *file)
{
	struct switch_request w;
	struct bio *bio = FUNC0(GFP_KERNEL, 0);
	if (!bio)
		return -ENOMEM;
	FUNC1(&w.wait);
	w.file = file;
	bio->bi_private = &w;
	bio->bi_bdev = NULL;
	FUNC2(lo->lo_queue, bio);
	FUNC3(&w.wait);
	return 0;
}