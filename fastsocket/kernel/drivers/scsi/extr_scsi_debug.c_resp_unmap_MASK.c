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
struct unmap_block_desc {int /*<<< orphan*/  blocks; int /*<<< orphan*/  lba; } ;
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {unsigned char* cmnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int check_condition_result ; 
 int FUNC1 (struct sdebug_dev_info*,unsigned long long,unsigned int) ; 
 int FUNC2 (struct scsi_cmnd*,int,struct sdebug_dev_info*) ; 
 unsigned int FUNC3 (unsigned char*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 unsigned char* FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long long,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct scsi_cmnd * scmd, struct sdebug_dev_info * devip)
{
	unsigned char *buf;
	struct unmap_block_desc *desc;
	unsigned int i, payload_len, descriptors;
	int ret;

	ret = FUNC2(scmd, 1, devip);
	if (ret)
		return ret;

	payload_len = FUNC3(&scmd->cmnd[7]);
	FUNC0(FUNC8(scmd) != payload_len);

	descriptors = (payload_len - 8) / 16;

	buf = FUNC7(FUNC8(scmd), GFP_ATOMIC);
	if (!buf)
		return check_condition_result;

	FUNC9(scmd, buf, FUNC8(scmd));

	FUNC0(FUNC3(&buf[0]) != payload_len - 2);
	FUNC0(FUNC3(&buf[2]) != descriptors * 16);

	desc = (void *)&buf[8];

	for (i = 0 ; i < descriptors ; i++) {
		unsigned long long lba = FUNC5(&desc[i].lba);
		unsigned int num = FUNC4(&desc[i].blocks);

		ret = FUNC1(devip, lba, num);
		if (ret)
			goto out;

		FUNC10(lba, num);
	}

	ret = 0;

out:
	FUNC6(buf);

	return ret;
}