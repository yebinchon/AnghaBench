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
struct jsflash {scalar_t__ base; struct jsfd_part* dv; } ;
struct jsfd_part {int dsize; } ;
struct gendisk {int first_minor; scalar_t__ queue; struct jsfd_part* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  disk_name; int /*<<< orphan*/  major; } ;
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  JSFD_MAJOR ; 
 int JSF_MAX ; 
 int JSF_NPART ; 
 int JSF_PART_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct gendisk*) ; 
 struct gendisk* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct jsflash jsf0 ; 
 scalar_t__ jsf_queue ; 
 struct gendisk** jsfd_disk ; 
 int /*<<< orphan*/  jsfd_do_request ; 
 int /*<<< orphan*/  jsfd_fops ; 
 int /*<<< orphan*/  FUNC3 (struct gendisk*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct gendisk*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gendisk*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(void)
{
	static DEFINE_SPINLOCK(lock);
	struct jsflash *jsf;
	struct jsfd_part *jdp;
	int err;
	int i;

	if (jsf0.base == 0)
		return -ENXIO;

	err = -ENOMEM;
	for (i = 0; i < JSF_MAX; i++) {
		struct gendisk *disk = FUNC1(1);
		if (!disk)
			goto out;
		jsfd_disk[i] = disk;
	}

	if (FUNC4(JSFD_MAJOR, "jsfd")) {
		err = -EIO;
		goto out;
	}

	jsf_queue = FUNC2(jsfd_do_request, &lock);
	if (!jsf_queue) {
		err = -ENOMEM;
		FUNC8(JSFD_MAJOR, "jsfd");
		goto out;
	}

	for (i = 0; i < JSF_MAX; i++) {
		struct gendisk *disk = jsfd_disk[i];
		if ((i & JSF_PART_MASK) >= JSF_NPART) continue;
		jsf = &jsf0;	/* actually, &jsfv[i >> JSF_PART_BITS] */
		jdp = &jsf->dv[i&JSF_PART_MASK];

		disk->major = JSFD_MAJOR;
		disk->first_minor = i;
		FUNC7(disk->disk_name, "jsfd%d", i);
		disk->fops = &jsfd_fops;
		FUNC5(disk, jdp->dsize >> 9);
		disk->private_data = jdp;
		disk->queue = jsf_queue;
		FUNC0(disk);
		FUNC6(disk, 1);
	}
	return 0;
out:
	while (i--)
		FUNC3(jsfd_disk[i]);
	return err;
}