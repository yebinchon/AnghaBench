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
struct ide_disk_obj {int /*<<< orphan*/  dev; int /*<<< orphan*/  drive; } ;
struct gendisk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ide_disk_obj ; 
 int /*<<< orphan*/  ide_disk_ref_mutex ; 
 struct ide_disk_obj* FUNC2 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ide_disk_obj *FUNC5(struct gendisk *disk)
{
	struct ide_disk_obj *idkp = NULL;

	FUNC3(&ide_disk_ref_mutex);
	idkp = FUNC2(disk, ide_disk_obj);
	if (idkp) {
		if (FUNC1(idkp->drive))
			idkp = NULL;
		else
			FUNC0(&idkp->dev);
	}
	FUNC4(&ide_disk_ref_mutex);
	return idkp;
}