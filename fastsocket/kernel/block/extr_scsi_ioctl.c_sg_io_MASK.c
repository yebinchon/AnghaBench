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
struct sg_iovec {int dummy; } ;
struct sg_io_hdr {char interface_id; scalar_t__ cmd_len; int dxfer_len; int dxfer_direction; int iovec_count; int /*<<< orphan*/  duration; int /*<<< orphan*/  dxferp; } ;
struct request_queue {int dummy; } ;
struct request {char* sense; scalar_t__ retries; scalar_t__ sense_len; struct bio* bio; } ;
struct iovec {int dummy; } ;
struct gendisk {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  sense ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 scalar_t__ BLK_MAX_CDB ; 
 int EFAULT ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  READ ; 
 int SCSI_SENSE_BUFFERSIZE ; 
#define  SG_DXFER_FROM_DEV 130 
#define  SG_DXFER_TO_DEV 129 
#define  SG_DXFER_TO_FROM_DEV 128 
 int /*<<< orphan*/  WRITE ; 
 int FUNC0 (struct request*,struct sg_io_hdr*,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct gendisk*,struct request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct request_queue*,struct request*,struct sg_io_hdr*,int /*<<< orphan*/ ) ; 
 struct request* FUNC3 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int FUNC5 (struct request_queue*,struct request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct request_queue*,struct request*,int /*<<< orphan*/ *,struct sg_iovec*,int,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sg_iovec*,int /*<<< orphan*/ ,int const) ; 
 size_t FUNC8 (struct iovec*,int) ; 
 int FUNC9 (struct iovec*,int,size_t) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct sg_iovec*) ; 
 struct sg_iovec* FUNC12 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct request_queue*) ; 

__attribute__((used)) static int FUNC15(struct request_queue *q, struct gendisk *bd_disk,
		struct sg_io_hdr *hdr, fmode_t mode)
{
	unsigned long start_time;
	int writing = 0, ret = 0;
	struct request *rq;
	char sense[SCSI_SENSE_BUFFERSIZE];
	struct bio *bio;

	if (hdr->interface_id != 'S')
		return -EINVAL;
	if (hdr->cmd_len > BLK_MAX_CDB)
		return -EINVAL;

	if (hdr->dxfer_len > (FUNC14(q) << 9))
		return -EIO;

	if (hdr->dxfer_len)
		switch (hdr->dxfer_direction) {
		default:
			return -EINVAL;
		case SG_DXFER_TO_DEV:
			writing = 1;
			break;
		case SG_DXFER_TO_FROM_DEV:
		case SG_DXFER_FROM_DEV:
			break;
		}

	rq = FUNC3(q, writing ? WRITE : READ, GFP_KERNEL);
	if (!rq)
		return -ENODEV;

	if (FUNC2(q, rq, hdr, mode)) {
		FUNC4(rq);
		return -EFAULT;
	}

	if (hdr->iovec_count) {
		const int size = sizeof(struct sg_iovec) * hdr->iovec_count;
		size_t iov_data_len;
		struct sg_iovec *iov;

		iov = FUNC12(size, GFP_KERNEL);
		if (!iov) {
			ret = -ENOMEM;
			goto out;
		}

		if (FUNC7(iov, hdr->dxferp, size)) {
			FUNC11(iov);
			ret = -EFAULT;
			goto out;
		}

		/* SG_IO howto says that the shorter of the two wins */
		iov_data_len = FUNC8((struct iovec *)iov,
					  hdr->iovec_count);
		if (hdr->dxfer_len < iov_data_len) {
			hdr->iovec_count = FUNC9((struct iovec *)iov,
						       hdr->iovec_count,
						       hdr->dxfer_len);
			iov_data_len = hdr->dxfer_len;
		}

		ret = FUNC6(q, rq, NULL, iov, hdr->iovec_count,
					  iov_data_len, GFP_KERNEL);
		FUNC11(iov);
	} else if (hdr->dxfer_len)
		ret = FUNC5(q, rq, NULL, hdr->dxferp, hdr->dxfer_len,
				      GFP_KERNEL);

	if (ret)
		goto out;

	bio = rq->bio;
	FUNC13(sense, 0, sizeof(sense));
	rq->sense = sense;
	rq->sense_len = 0;
	rq->retries = 0;

	start_time = jiffies;

	/* ignore return value. All information is passed back to caller
	 * (if he doesn't check that is his problem).
	 * N.B. a non-zero SCSI status is _not_ necessarily an error.
	 */
	FUNC1(q, bd_disk, rq, 0);

	hdr->duration = FUNC10(jiffies - start_time);

	return FUNC0(rq, hdr, bio);
out:
	FUNC4(rq);
	return ret;
}