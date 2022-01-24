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
struct gendisk {int first_minor; int /*<<< orphan*/  disk_name; int /*<<< orphan*/  flags; scalar_t__ queue; struct brd_device* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; } ;
struct brd_device {int brd_number; scalar_t__ brd_queue; struct gendisk* brd_disk; int /*<<< orphan*/  brd_pages; int /*<<< orphan*/  brd_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_BOUNCE_ANY ; 
 int /*<<< orphan*/  GENHD_FL_SUPPRESS_PARTITION_INFO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RAMDISK_MAJOR ; 
 struct gendisk* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  brd_fops ; 
 int /*<<< orphan*/  brd_make_request ; 
 int /*<<< orphan*/  FUNC7 (struct brd_device*) ; 
 struct brd_device* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int part_shift ; 
 int rd_size ; 
 int /*<<< orphan*/  FUNC9 (struct gendisk*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct brd_device *FUNC12(int i)
{
	struct brd_device *brd;
	struct gendisk *disk;

	brd = FUNC8(sizeof(*brd), GFP_KERNEL);
	if (!brd)
		goto out;
	brd->brd_number		= i;
	FUNC10(&brd->brd_lock);
	FUNC0(&brd->brd_pages, GFP_ATOMIC);

	brd->brd_queue = FUNC2(GFP_KERNEL);
	if (!brd->brd_queue)
		goto out_free_dev;
	FUNC5(brd->brd_queue, brd_make_request);
	FUNC6(brd->brd_queue, 1024);
	FUNC4(brd->brd_queue, BLK_BOUNCE_ANY);

	disk = brd->brd_disk = FUNC1(1 << part_shift);
	if (!disk)
		goto out_free_queue;
	disk->major		= RAMDISK_MAJOR;
	disk->first_minor	= i << part_shift;
	disk->fops		= &brd_fops;
	disk->private_data	= brd;
	disk->queue		= brd->brd_queue;
	disk->flags |= GENHD_FL_SUPPRESS_PARTITION_INFO;
	FUNC11(disk->disk_name, "ram%d", i);
	FUNC9(disk, rd_size * 2);

	return brd;

out_free_queue:
	FUNC3(brd->brd_queue);
out_free_dev:
	FUNC7(brd);
out:
	return NULL;
}