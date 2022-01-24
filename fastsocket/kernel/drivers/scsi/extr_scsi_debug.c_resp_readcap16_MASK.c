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
struct scsi_cmnd {scalar_t__ cmnd; } ;

/* Variables and functions */
 int SDEBUG_READCAP16_ARR_SZ ; 
 int FUNC0 (struct scsi_cmnd*,int,struct sdebug_dev_info*) ; 
 int FUNC1 (struct scsi_cmnd*,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int scsi_debug_dif ; 
 scalar_t__ FUNC5 () ; 
 int scsi_debug_lowest_aligned ; 
 int scsi_debug_physblk_exp ; 
 int scsi_debug_sector_size ; 
 int sdebug_capacity ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd * scp,
			  struct sdebug_dev_info * devip)
{
	unsigned char *cmd = (unsigned char *)scp->cmnd;
	unsigned char arr[SDEBUG_READCAP16_ARR_SZ];
	unsigned long long capac;
	int errsts, k, alloc_len;

	if ((errsts = FUNC0(scp, 1, devip)))
		return errsts;
	alloc_len = ((cmd[10] << 24) + (cmd[11] << 16) + (cmd[12] << 8)
		     + cmd[13]);
	/* following just in case virtual_gb changed */
	sdebug_capacity = FUNC2();
	FUNC3(arr, 0, SDEBUG_READCAP16_ARR_SZ);
	capac = sdebug_capacity - 1;
	for (k = 0; k < 8; ++k, capac >>= 8)
		arr[7 - k] = capac & 0xff;
	arr[8] = (scsi_debug_sector_size >> 24) & 0xff;
	arr[9] = (scsi_debug_sector_size >> 16) & 0xff;
	arr[10] = (scsi_debug_sector_size >> 8) & 0xff;
	arr[11] = scsi_debug_sector_size & 0xff;
	arr[13] = scsi_debug_physblk_exp & 0xf;
	arr[14] = (scsi_debug_lowest_aligned >> 8) & 0x3f;

	if (FUNC5())
		arr[14] |= 0x80; /* LBPME */

	arr[15] = scsi_debug_lowest_aligned & 0xff;

	if (scsi_debug_dif) {
		arr[12] = (scsi_debug_dif - 1) << 1; /* P_TYPE */
		arr[12] |= 1; /* PROT_EN */
	}

	return FUNC1(scp, arr,
				    FUNC4(alloc_len, SDEBUG_READCAP16_ARR_SZ));
}