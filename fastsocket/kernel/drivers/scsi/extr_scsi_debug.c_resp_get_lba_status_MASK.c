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
struct scsi_cmnd {int /*<<< orphan*/ * cmnd; } ;

/* Variables and functions */
 int SDEBUG_GET_LBA_STATUS_LEN ; 
 int FUNC0 (struct sdebug_dev_info*,unsigned long long,int) ; 
 int FUNC1 (struct scsi_cmnd*,int,struct sdebug_dev_info*) ; 
 int FUNC2 (struct scsi_cmnd*,unsigned char*,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long long FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (unsigned long long,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long long,unsigned char*) ; 

__attribute__((used)) static int FUNC9(struct scsi_cmnd * scmd,
			       struct sdebug_dev_info * devip)
{
	unsigned long long lba;
	unsigned int alloc_len, mapped, num;
	unsigned char arr[SDEBUG_GET_LBA_STATUS_LEN];
	int ret;

	ret = FUNC1(scmd, 1, devip);
	if (ret)
		return ret;

	lba = FUNC4(&scmd->cmnd[2]);
	alloc_len = FUNC3(&scmd->cmnd[10]);

	if (alloc_len < 24)
		return 0;

	ret = FUNC0(devip, lba, 1);
	if (ret)
		return ret;

	mapped = FUNC5(lba, &num);

	FUNC6(arr, 0, SDEBUG_GET_LBA_STATUS_LEN);
	FUNC7(16, &arr[0]);	/* Parameter Data Length */
	FUNC8(lba, &arr[8]);	/* LBA */
	FUNC7(num, &arr[16]);	/* Number of blocks */
	arr[20] = !mapped;			/* mapped = 0, unmapped = 1 */

	return FUNC2(scmd, arr, SDEBUG_GET_LBA_STATUS_LEN);
}