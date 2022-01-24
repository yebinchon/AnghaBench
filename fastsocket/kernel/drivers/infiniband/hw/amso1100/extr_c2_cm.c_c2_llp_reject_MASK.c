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
typedef  union c2wr {int dummy; } c2wr ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct iw_cm_id {scalar_t__ provider_data; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {unsigned long context; } ;
struct c2wr_cr_reject_req {scalar_t__ ep_handle; int /*<<< orphan*/  rnic_handle; TYPE_1__ hdr; } ;
struct c2wr_cr_reject_rep {int dummy; } ;
struct c2_vq_req {scalar_t__ reply_msg; } ;
struct c2_dev {int /*<<< orphan*/  adapter_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCWR_CR_REJECT ; 
 int ENOMEM ; 
 int FUNC0 (struct c2wr_cr_reject_rep*) ; 
 int /*<<< orphan*/  FUNC1 (struct c2wr_cr_reject_req*,int /*<<< orphan*/ ) ; 
 struct c2_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct c2_dev*,struct c2wr_cr_reject_rep*) ; 
 struct c2_vq_req* FUNC4 (struct c2_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct c2_dev*,struct c2_vq_req*) ; 
 int FUNC8 (struct c2_dev*,union c2wr*) ; 
 int FUNC9 (struct c2_dev*,struct c2_vq_req*) ; 

int FUNC10(struct iw_cm_id *cm_id, const void *pdata, u8 pdata_len)
{
	struct c2_dev *c2dev;
	struct c2wr_cr_reject_req wr;
	struct c2_vq_req *vq_req;
	struct c2wr_cr_reject_rep *reply;
	int err;

	c2dev = FUNC2(cm_id->device);

	/*
	 * Allocate verbs request.
	 */
	vq_req = FUNC4(c2dev);
	if (!vq_req)
		return -ENOMEM;

	/*
	 * Build the WR
	 */
	FUNC1(&wr, CCWR_CR_REJECT);
	wr.hdr.context = (unsigned long) vq_req;
	wr.rnic_handle = c2dev->adapter_handle;
	wr.ep_handle = (u32) (unsigned long) cm_id->provider_data;

	/*
	 * reference the request struct.  dereferenced in the int handler.
	 */
	FUNC6(c2dev, vq_req);

	/*
	 * Send WR to adapter
	 */
	err = FUNC8(c2dev, (union c2wr *) & wr);
	if (err) {
		FUNC7(c2dev, vq_req);
		goto bail0;
	}

	/*
	 * Wait for reply from adapter
	 */
	err = FUNC9(c2dev, vq_req);
	if (err)
		goto bail0;

	/*
	 * Process reply
	 */
	reply = (struct c2wr_cr_reject_rep *) (unsigned long)
		vq_req->reply_msg;
	if (!reply) {
		err = -ENOMEM;
		goto bail0;
	}
	err = FUNC0(reply);
	/*
	 * free vq stuff
	 */
	FUNC3(c2dev, reply);

 bail0:
	FUNC5(c2dev, vq_req);
	return err;
}