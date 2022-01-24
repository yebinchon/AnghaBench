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
typedef  union c2wr {int dummy; } c2wr ;
typedef  void* u64 ;
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  sin_port; TYPE_2__ sin_addr; } ;
struct iw_cm_id {void* provider_data; TYPE_3__ local_addr; int /*<<< orphan*/  device; } ;
struct TYPE_4__ {void* context; } ;
struct c2wr_ep_listen_create_req {void* user_context; int /*<<< orphan*/  backlog; int /*<<< orphan*/  local_port; int /*<<< orphan*/  local_addr; int /*<<< orphan*/  rnic_handle; TYPE_1__ hdr; } ;
struct c2wr_ep_listen_create_rep {scalar_t__ ep_handle; } ;
struct c2_vq_req {scalar_t__ reply_msg; } ;
struct c2_dev {int /*<<< orphan*/  adapter_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCWR_EP_LISTEN_CREATE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (struct c2wr_ep_listen_create_rep*) ; 
 int /*<<< orphan*/  FUNC1 (struct c2wr_ep_listen_create_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct c2_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct c2_dev*,struct c2wr_ep_listen_create_rep*) ; 
 struct c2_vq_req* FUNC5 (struct c2_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct c2_dev*,struct c2_vq_req*) ; 
 int FUNC9 (struct c2_dev*,union c2wr*) ; 
 int FUNC10 (struct c2_dev*,struct c2_vq_req*) ; 

int FUNC11(struct iw_cm_id *cm_id, int backlog)
{
	struct c2_dev *c2dev;
	struct c2wr_ep_listen_create_req wr;
	struct c2wr_ep_listen_create_rep *reply;
	struct c2_vq_req *vq_req;
	int err;

	c2dev = FUNC3(cm_id->device);
	if (c2dev == NULL)
		return -EINVAL;

	/*
	 * Allocate verbs request.
	 */
	vq_req = FUNC5(c2dev);
	if (!vq_req)
		return -ENOMEM;

	/*
	 * Build the WR
	 */
	FUNC1(&wr, CCWR_EP_LISTEN_CREATE);
	wr.hdr.context = (u64) (unsigned long) vq_req;
	wr.rnic_handle = c2dev->adapter_handle;
	wr.local_addr = cm_id->local_addr.sin_addr.s_addr;
	wr.local_port = cm_id->local_addr.sin_port;
	wr.backlog = FUNC2(backlog);
	wr.user_context = (u64) (unsigned long) cm_id;

	/*
	 * Reference the request struct.  Dereferenced in the int handler.
	 */
	FUNC7(c2dev, vq_req);

	/*
	 * Send WR to adapter
	 */
	err = FUNC9(c2dev, (union c2wr *) & wr);
	if (err) {
		FUNC8(c2dev, vq_req);
		goto bail0;
	}

	/*
	 * Wait for reply from adapter
	 */
	err = FUNC10(c2dev, vq_req);
	if (err)
		goto bail0;

	/*
	 * Process reply
	 */
	reply =
	    (struct c2wr_ep_listen_create_rep *) (unsigned long) vq_req->reply_msg;
	if (!reply) {
		err = -ENOMEM;
		goto bail1;
	}

	if ((err = FUNC0(reply)) != 0)
		goto bail1;

	/*
	 * Keep the adapter handle. Used in subsequent destroy
	 */
	cm_id->provider_data = (void*)(unsigned long) reply->ep_handle;

	/*
	 * free vq stuff
	 */
	FUNC4(c2dev, reply);
	FUNC6(c2dev, vq_req);

	return 0;

 bail1:
	FUNC4(c2dev, reply);
 bail0:
	FUNC6(c2dev, vq_req);
	return err;
}