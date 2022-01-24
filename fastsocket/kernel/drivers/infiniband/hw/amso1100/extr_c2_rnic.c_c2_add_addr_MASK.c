#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union c2wr {int dummy; } c2wr ;
struct TYPE_4__ {unsigned long context; } ;
struct c2wr_rnic_setconfig_req {int /*<<< orphan*/  data; int /*<<< orphan*/  option; int /*<<< orphan*/  rnic_handle; TYPE_2__ hdr; } ;
struct c2wr_rnic_setconfig_rep {int dummy; } ;
struct c2_vq_req {scalar_t__ reply_msg; } ;
struct c2_netaddr {scalar_t__ mtu; void* netmask; void* ip_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  msg_size; } ;
struct c2_dev {int /*<<< orphan*/  adapter_handle; TYPE_1__ req_vq; } ;
typedef  void* __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  C2_CFG_ADD_ADDR ; 
 int /*<<< orphan*/  CCWR_RNIC_SETCONFIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct c2wr_rnic_setconfig_rep*) ; 
 int /*<<< orphan*/  FUNC1 (struct c2wr_rnic_setconfig_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct c2wr_rnic_setconfig_req*) ; 
 struct c2wr_rnic_setconfig_req* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct c2_netaddr*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct c2_dev*,struct c2wr_rnic_setconfig_rep*) ; 
 struct c2_vq_req* FUNC7 (struct c2_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct c2_dev*,struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct c2_dev*,struct c2_vq_req*) ; 
 int FUNC11 (struct c2_dev*,union c2wr*) ; 
 int FUNC12 (struct c2_dev*,struct c2_vq_req*) ; 

int FUNC13(struct c2_dev *c2dev, __be32 inaddr, __be32 inmask)
{
	struct c2_vq_req *vq_req;
	struct c2wr_rnic_setconfig_req *wr;
	struct c2wr_rnic_setconfig_rep *reply;
	struct c2_netaddr netaddr;
	int err, len;

	vq_req = FUNC7(c2dev);
	if (!vq_req)
		return -ENOMEM;

	len = sizeof(struct c2_netaddr);
	wr = FUNC4(c2dev->req_vq.msg_size, GFP_KERNEL);
	if (!wr) {
		err = -ENOMEM;
		goto bail0;
	}

	FUNC1(wr, CCWR_RNIC_SETCONFIG);
	wr->hdr.context = (unsigned long) vq_req;
	wr->rnic_handle = c2dev->adapter_handle;
	wr->option = FUNC2(C2_CFG_ADD_ADDR);

	netaddr.ip_addr = inaddr;
	netaddr.netmask = inmask;
	netaddr.mtu = 0;

	FUNC5(wr->data, &netaddr, len);

	FUNC9(c2dev, vq_req);

	err = FUNC11(c2dev, (union c2wr *) wr);
	if (err) {
		FUNC10(c2dev, vq_req);
		goto bail1;
	}

	err = FUNC12(c2dev, vq_req);
	if (err)
		goto bail1;

	reply =
	    (struct c2wr_rnic_setconfig_rep *) (unsigned long) (vq_req->reply_msg);
	if (!reply) {
		err = -ENOMEM;
		goto bail1;
	}

	err = FUNC0(reply);
	FUNC6(c2dev, reply);

      bail1:
	FUNC3(wr);
      bail0:
	FUNC8(c2dev, vq_req);
	return err;
}