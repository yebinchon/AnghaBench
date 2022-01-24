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
struct sg_io_hdr {int status; int sb_len_wr; scalar_t__ sbp; scalar_t__ mx_sb_len; int /*<<< orphan*/  resid; int /*<<< orphan*/  info; int /*<<< orphan*/  driver_status; int /*<<< orphan*/  host_status; int /*<<< orphan*/  masked_status; int /*<<< orphan*/  msg_status; } ;
struct request {int errors; int /*<<< orphan*/  sense; scalar_t__ sense_len; int /*<<< orphan*/  resid_len; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  SG_INFO_CHECK ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct request *rq, struct sg_io_hdr *hdr,
				 struct bio *bio)
{
	int r, ret = 0;

	/*
	 * fill in all the output members
	 */
	hdr->status = rq->errors & 0xff;
	hdr->masked_status = FUNC7(rq->errors);
	hdr->msg_status = FUNC6(rq->errors);
	hdr->host_status = FUNC4(rq->errors);
	hdr->driver_status = FUNC3(rq->errors);
	hdr->info = 0;
	if (hdr->masked_status || hdr->host_status || hdr->driver_status)
		hdr->info |= SG_INFO_CHECK;
	hdr->resid = rq->resid_len;
	hdr->sb_len_wr = 0;

	if (rq->sense_len && hdr->sbp) {
		int len = FUNC5((unsigned int) hdr->mx_sb_len, rq->sense_len);

		if (!FUNC2(hdr->sbp, rq->sense, len))
			hdr->sb_len_wr = len;
		else
			ret = -EFAULT;
	}

	r = FUNC1(bio);
	if (!ret)
		ret = r;
	FUNC0(rq);

	return ret;
}