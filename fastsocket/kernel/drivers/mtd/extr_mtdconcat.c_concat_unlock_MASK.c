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
typedef  scalar_t__ uint64_t ;
struct mtd_info {scalar_t__ size; int (* unlock ) (struct mtd_info*,scalar_t__,scalar_t__) ;} ;
struct mtd_concat {int num_subdev; struct mtd_info** subdev; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 struct mtd_concat* FUNC0 (struct mtd_info*) ; 
 int EINVAL ; 
 int FUNC1 (struct mtd_info*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct mtd_info *mtd, loff_t ofs, uint64_t len)
{
	struct mtd_concat *concat = FUNC0(mtd);
	int i, err = 0;

	if ((len + ofs) > mtd->size)
		return -EINVAL;

	for (i = 0; i < concat->num_subdev; i++) {
		struct mtd_info *subdev = concat->subdev[i];
		uint64_t size;

		if (ofs >= subdev->size) {
			size = 0;
			ofs -= subdev->size;
			continue;
		}
		if (ofs + len > subdev->size)
			size = subdev->size - ofs;
		else
			size = len;

		err = subdev->unlock(subdev, ofs, size);

		if (err)
			break;

		len -= size;
		if (len == 0)
			break;

		err = -EINVAL;
		ofs = 0;
	}

	return err;
}