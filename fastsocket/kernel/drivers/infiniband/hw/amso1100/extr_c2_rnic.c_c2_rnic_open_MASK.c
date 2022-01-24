#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wr ;
struct TYPE_4__ {unsigned long context; } ;
struct TYPE_5__ {unsigned long user_context; void* port_num; void* flags; TYPE_1__ hdr; } ;
struct TYPE_6__ {TYPE_2__ req; } ;
union c2wr {TYPE_3__ rnic_open; } ;
struct c2wr_rnic_open_rep {int /*<<< orphan*/  rnic_handle; } ;
struct c2_vq_req {scalar_t__ reply_msg; } ;
struct c2_dev {int /*<<< orphan*/  adapter_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCWR_RNIC_OPEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RNIC_PRIV_MODE ; 
 int FUNC0 (struct c2wr_rnic_open_rep*) ; 
 int /*<<< orphan*/  FUNC1 (union c2wr*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union c2wr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct c2_dev*,struct c2wr_rnic_open_rep*) ; 
 struct c2_vq_req* FUNC5 (struct c2_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct c2_dev*,struct c2_vq_req*) ; 
 int FUNC9 (struct c2_dev*,union c2wr*) ; 
 int FUNC10 (struct c2_dev*,struct c2_vq_req*) ; 

__attribute__((used)) static int FUNC11(struct c2_dev *c2dev)
{
	struct c2_vq_req *vq_req;
	union c2wr wr;
	struct c2wr_rnic_open_rep *reply;
	int err;

	vq_req = FUNC5(c2dev);
	if (vq_req == NULL) {
		return -ENOMEM;
	}

	FUNC3(&wr, 0, sizeof(wr));
	FUNC1(&wr, CCWR_RNIC_OPEN);
	wr.rnic_open.req.hdr.context = (unsigned long) (vq_req);
	wr.rnic_open.req.flags = FUNC2(RNIC_PRIV_MODE);
	wr.rnic_open.req.port_num = FUNC2(0);
	wr.rnic_open.req.user_context = (unsigned long) c2dev;

	FUNC7(c2dev, vq_req);

	err = FUNC9(c2dev, &wr);
	if (err) {
		FUNC8(c2dev, vq_req);
		goto bail0;
	}

	err = FUNC10(c2dev, vq_req);
	if (err) {
		goto bail0;
	}

	reply = (struct c2wr_rnic_open_rep *) (unsigned long) (vq_req->reply_msg);
	if (!reply) {
		err = -ENOMEM;
		goto bail0;
	}

	if ((err = FUNC0(reply)) != 0) {
		goto bail1;
	}

	c2dev->adapter_handle = reply->rnic_handle;

      bail1:
	FUNC4(c2dev, reply);
      bail0:
	FUNC6(c2dev, vq_req);
	return err;
}