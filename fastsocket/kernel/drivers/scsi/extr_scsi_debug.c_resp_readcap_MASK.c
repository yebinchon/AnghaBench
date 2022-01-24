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
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int SDEBUG_READCAP_ARR_SZ ; 
 int FUNC0 (struct scsi_cmnd*,int,struct sdebug_dev_info*) ; 
 int FUNC1 (struct scsi_cmnd*,unsigned char*,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int scsi_debug_sector_size ; 
 int sdebug_capacity ; 

__attribute__((used)) static int FUNC4(struct scsi_cmnd * scp,
			struct sdebug_dev_info * devip)
{
	unsigned char arr[SDEBUG_READCAP_ARR_SZ];
	unsigned int capac;
	int errsts;

	if ((errsts = FUNC0(scp, 1, devip)))
		return errsts;
	/* following just in case virtual_gb changed */
	sdebug_capacity = FUNC2();
	FUNC3(arr, 0, SDEBUG_READCAP_ARR_SZ);
	if (sdebug_capacity < 0xffffffff) {
		capac = (unsigned int)sdebug_capacity - 1;
		arr[0] = (capac >> 24);
		arr[1] = (capac >> 16) & 0xff;
		arr[2] = (capac >> 8) & 0xff;
		arr[3] = capac & 0xff;
	} else {
		arr[0] = 0xff;
		arr[1] = 0xff;
		arr[2] = 0xff;
		arr[3] = 0xff;
	}
	arr[6] = (scsi_debug_sector_size >> 8) & 0xff;
	arr[7] = scsi_debug_sector_size & 0xff;
	return FUNC1(scp, arr, SDEBUG_READCAP_ARR_SZ);
}