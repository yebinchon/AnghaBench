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
struct scsi_disk {int provisioning_mode; TYPE_1__* device; } ;
struct scsi_device {int /*<<< orphan*/  sector_size; } ;
struct request {int* cmd; int cmd_len; unsigned int __data_len; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  timeout; int /*<<< orphan*/  rq_disk; } ;
struct page {int dummy; } ;
typedef  int sector_t ;
struct TYPE_2__ {unsigned int sector_size; } ;

/* Variables and functions */
 int BLKPREP_DEFER ; 
 int BLKPREP_KILL ; 
 int BLKPREP_OK ; 
 int GFP_ATOMIC ; 
#define  SD_LBP_UNMAP 131 
#define  SD_LBP_WS10 130 
#define  SD_LBP_WS16 129 
#define  SD_LBP_ZERO 128 
 int /*<<< orphan*/  SD_TIMEOUT ; 
 int UNMAP ; 
 char WRITE_SAME ; 
 int WRITE_SAME_16 ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,struct page*,unsigned int) ; 
 unsigned int FUNC3 (struct request*) ; 
 int FUNC4 (struct request*) ; 
 unsigned int FUNC5 (struct request*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 struct scsi_disk* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct scsi_device*,struct request*) ; 

__attribute__((used)) static int FUNC14(struct scsi_device *sdp, struct request *rq)
{
	struct scsi_disk *sdkp = FUNC12(rq->rq_disk);
	sector_t sector = FUNC4(rq);
	unsigned int nr_sectors = FUNC5(rq);
	unsigned int nr_bytes = FUNC3(rq);
	unsigned int len;
	int ret;
	char *buf;
	struct page *page;

	sector >>= FUNC6(sdp->sector_size) - 9;
	nr_sectors >>= FUNC6(sdp->sector_size) - 9;
	rq->timeout = SD_TIMEOUT;

	FUNC7(rq->cmd, 0, rq->cmd_len);

	page = FUNC1(GFP_ATOMIC | __GFP_ZERO);
	if (!page)
		return BLKPREP_DEFER;

	switch (sdkp->provisioning_mode) {
	case SD_LBP_UNMAP:
		buf = FUNC8(page);

		rq->cmd_len = 10;
		rq->cmd[0] = UNMAP;
		rq->cmd[8] = 24;

		FUNC9(6 + 16, &buf[0]);
		FUNC9(16, &buf[2]);
		FUNC11(sector, &buf[8]);
		FUNC10(nr_sectors, &buf[16]);

		len = 24;
		break;

	case SD_LBP_WS16:
		rq->cmd_len = 16;
		rq->cmd[0] = WRITE_SAME_16;
		rq->cmd[1] = 0x8; /* UNMAP */
		FUNC11(sector, &rq->cmd[2]);
		FUNC10(nr_sectors, &rq->cmd[10]);

		len = sdkp->device->sector_size;
		break;

	case SD_LBP_WS10:
	case SD_LBP_ZERO:
		rq->cmd_len = 10;
		rq->cmd[0] = WRITE_SAME;
		if (sdkp->provisioning_mode == SD_LBP_WS10)
			rq->cmd[1] = 0x8; /* UNMAP */
		FUNC10(sector, &rq->cmd[2]);
		FUNC9(nr_sectors, &rq->cmd[7]);

		len = sdkp->device->sector_size;
		break;

	default:
		ret = BLKPREP_KILL;
		goto out;
	}

	FUNC2(rq, page, len);
	ret = FUNC13(sdp, rq);
	rq->buffer = FUNC8(page);
	rq->__data_len = nr_bytes;

out:
	if (ret != BLKPREP_OK) {
		FUNC0(page);
		rq->buffer = NULL;
	}
	return ret;
}