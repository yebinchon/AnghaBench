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
struct mtd_part {scalar_t__ offset; TYPE_1__* master; } ;
struct mtd_info {int flags; } ;
struct kvec {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int (* writev ) (TYPE_1__*,struct kvec const*,unsigned long,scalar_t__,size_t*) ;} ;

/* Variables and functions */
 int EROFS ; 
 int MTD_WRITEABLE ; 
 struct mtd_part* FUNC0 (struct mtd_info*) ; 
 int FUNC1 (TYPE_1__*,struct kvec const*,unsigned long,scalar_t__,size_t*) ; 

__attribute__((used)) static int FUNC2(struct mtd_info *mtd, const struct kvec *vecs,
		unsigned long count, loff_t to, size_t *retlen)
{
	struct mtd_part *part = FUNC0(mtd);
	if (!(mtd->flags & MTD_WRITEABLE))
		return -EROFS;
	return part->master->writev(part->master, vecs, count,
					to + part->offset, retlen);
}