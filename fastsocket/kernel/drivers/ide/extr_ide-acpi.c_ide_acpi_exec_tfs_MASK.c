#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int name; int /*<<< orphan*/  dn; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (TYPE_1__*,unsigned int*,unsigned long*,unsigned long*) ; 
 int FUNC2 (TYPE_1__*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

int FUNC4(ide_drive_t *drive)
{
	int		ret;
	unsigned int	gtf_length;
	unsigned long	gtf_address;
	unsigned long	obj_loc;

	FUNC0("call get_GTF, drive=%s port=%d\n", drive->name, drive->dn);

	ret = FUNC1(drive, &gtf_length, &gtf_address, &obj_loc);
	if (ret < 0) {
		FUNC0("get_GTF error (%d)\n", ret);
		return ret;
	}

	FUNC0("call set_taskfiles, drive=%s\n", drive->name);

	ret = FUNC2(drive, gtf_length, gtf_address);
	FUNC3((void *)obj_loc);
	if (ret < 0) {
		FUNC0("set_taskfiles error (%d)\n", ret);
	}

	FUNC0("ret=%d\n", ret);

	return ret;
}