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
struct scsi_cd {int /*<<< orphan*/  cdi; } ;
struct gendisk {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct scsi_cd* FUNC1 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cd*) ; 

__attribute__((used)) static int FUNC3(struct gendisk *disk, fmode_t mode)
{
	struct scsi_cd *cd = FUNC1(disk);
	FUNC0(&cd->cdi, mode);
	FUNC2(cd);
	return 0;
}