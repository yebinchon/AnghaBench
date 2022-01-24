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
typedef  scalar_t__ u8 ;
struct ib_mad_agent {int /*<<< orphan*/  mr; scalar_t__ hi_tid; scalar_t__ port_num; TYPE_1__* qp; void* context; scalar_t__ send_handler; scalar_t__ recv_handler; struct ib_device* device; scalar_t__ rmpp_version; } ;
struct ib_mad_reg_req {size_t mgmt_class_version; scalar_t__ mgmt_class; struct ib_mad_agent agent; int /*<<< orphan*/  agent_list; int /*<<< orphan*/  comp; int /*<<< orphan*/  refcount; int /*<<< orphan*/  local_work; int /*<<< orphan*/  local_list; int /*<<< orphan*/  timed_work; int /*<<< orphan*/  rmpp_list; int /*<<< orphan*/  done_list; int /*<<< orphan*/  wait_list; int /*<<< orphan*/  send_list; int /*<<< orphan*/  lock; struct ib_mad_reg_req* reg_req; TYPE_2__* qp_info; int /*<<< orphan*/  oui; } ;
struct ib_mad_port_private {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  agent_list; TYPE_3__* version; TYPE_2__* qp_info; } ;
struct ib_mad_mgmt_vendor_class_table {struct ib_mad_mgmt_vendor_class** vendor_class; } ;
struct ib_mad_mgmt_vendor_class {int dummy; } ;
struct ib_mad_mgmt_method_table {int dummy; } ;
struct ib_mad_mgmt_class_table {struct ib_mad_mgmt_method_table** method_table; } ;
struct ib_mad_agent_private {size_t mgmt_class_version; scalar_t__ mgmt_class; struct ib_mad_agent agent; int /*<<< orphan*/  agent_list; int /*<<< orphan*/  comp; int /*<<< orphan*/  refcount; int /*<<< orphan*/  local_work; int /*<<< orphan*/  local_list; int /*<<< orphan*/  timed_work; int /*<<< orphan*/  rmpp_list; int /*<<< orphan*/  done_list; int /*<<< orphan*/  wait_list; int /*<<< orphan*/  send_list; int /*<<< orphan*/  lock; struct ib_mad_agent_private* reg_req; TYPE_2__* qp_info; int /*<<< orphan*/  oui; } ;
struct ib_device {int dummy; } ;
typedef  scalar_t__ ib_mad_send_handler ;
typedef  scalar_t__ ib_mad_recv_handler ;
typedef  enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;
struct TYPE_6__ {struct ib_mad_mgmt_vendor_class_table* vendor; struct ib_mad_mgmt_class_table* class; } ;
struct TYPE_5__ {TYPE_1__* qp; } ;
struct TYPE_4__ {int /*<<< orphan*/  pd; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 struct ib_mad_agent* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_ACCESS_LOCAL_WRITE ; 
 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ; 
 scalar_t__ IB_MGMT_CLASS_SUBN_LID_ROUTED ; 
 scalar_t__ IB_MGMT_RMPP_VERSION ; 
 int IB_QPT_SMI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_MGMT_CLASS ; 
 size_t MAX_MGMT_VERSION ; 
 int FUNC5 (struct ib_mad_reg_req*,struct ib_mad_reg_req*,scalar_t__) ; 
 int FUNC6 (struct ib_mad_reg_req*,struct ib_mad_reg_req*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ib_mad_port_private* FUNC12 (struct ib_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ ib_mad_client_id ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (struct ib_mad_mgmt_vendor_class*,struct ib_mad_reg_req*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ib_mad_reg_req*) ; 
 struct ib_mad_reg_req* FUNC19 (struct ib_mad_reg_req*,int,int /*<<< orphan*/ ) ; 
 struct ib_mad_reg_req* FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  local_completions ; 
 scalar_t__ FUNC22 (struct ib_mad_mgmt_method_table**,struct ib_mad_reg_req*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timeout_sends ; 
 scalar_t__ FUNC26 (scalar_t__) ; 

struct ib_mad_agent *FUNC27(struct ib_device *device,
					   u8 port_num,
					   enum ib_qp_type qp_type,
					   struct ib_mad_reg_req *mad_reg_req,
					   u8 rmpp_version,
					   ib_mad_send_handler send_handler,
					   ib_mad_recv_handler recv_handler,
					   void *context)
{
	struct ib_mad_port_private *port_priv;
	struct ib_mad_agent *ret = FUNC0(-EINVAL);
	struct ib_mad_agent_private *mad_agent_priv;
	struct ib_mad_reg_req *reg_req = NULL;
	struct ib_mad_mgmt_class_table *class;
	struct ib_mad_mgmt_vendor_class_table *vendor;
	struct ib_mad_mgmt_vendor_class *vendor_class;
	struct ib_mad_mgmt_method_table *method;
	int ret2, qpn;
	unsigned long flags;
	u8 mgmt_class, vclass;

	/* Validate parameters */
	qpn = FUNC9(qp_type);
	if (qpn == -1)
		goto error1;

	if (rmpp_version && rmpp_version != IB_MGMT_RMPP_VERSION)
		goto error1;

	/* Validate MAD registration request if supplied */
	if (mad_reg_req) {
		if (mad_reg_req->mgmt_class_version >= MAX_MGMT_VERSION)
			goto error1;
		if (!recv_handler)
			goto error1;
		if (mad_reg_req->mgmt_class >= MAX_MGMT_CLASS) {
			/*
			 * IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE is the only
			 * one in this range currently allowed
			 */
			if (mad_reg_req->mgmt_class !=
			    IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE)
				goto error1;
		} else if (mad_reg_req->mgmt_class == 0) {
			/*
			 * Class 0 is reserved in IBA and is used for
			 * aliasing of IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE
			 */
			goto error1;
		} else if (FUNC15(mad_reg_req->mgmt_class)) {
			/*
			 * If class is in "new" vendor range,
			 * ensure supplied OUI is not zero
			 */
			if (!FUNC17(mad_reg_req->oui))
				goto error1;
		}
		/* Make sure class supplied is consistent with RMPP */
		if (!FUNC13(mad_reg_req->mgmt_class)) {
			if (rmpp_version)
				goto error1;
		}
		/* Make sure class supplied is consistent with QP type */
		if (qp_type == IB_QPT_SMI) {
			if ((mad_reg_req->mgmt_class !=
					IB_MGMT_CLASS_SUBN_LID_ROUTED) &&
			    (mad_reg_req->mgmt_class !=
					IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE))
				goto error1;
		} else {
			if ((mad_reg_req->mgmt_class ==
					IB_MGMT_CLASS_SUBN_LID_ROUTED) ||
			    (mad_reg_req->mgmt_class ==
					IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE))
				goto error1;
		}
	} else {
		/* No registration request supplied */
		if (!send_handler)
			goto error1;
	}

	/* Validate device and port */
	port_priv = FUNC12(device, port_num);
	if (!port_priv) {
		ret = FUNC0(-ENODEV);
		goto error1;
	}

	/* Verify the QP requested is supported.  For example, Ethernet devices
	 * will not have QP0 */
	if (!port_priv->qp_info[qpn].qp) {
		ret = FUNC0(-EPROTONOSUPPORT);
		goto error1;
	}

	/* Allocate structures */
	mad_agent_priv = FUNC20(sizeof *mad_agent_priv, GFP_KERNEL);
	if (!mad_agent_priv) {
		ret = FUNC0(-ENOMEM);
		goto error1;
	}

	mad_agent_priv->agent.mr = FUNC11(port_priv->qp_info[qpn].qp->pd,
						 IB_ACCESS_LOCAL_WRITE);
	if (FUNC4(mad_agent_priv->agent.mr)) {
		ret = FUNC0(-ENOMEM);
		goto error2;
	}

	if (mad_reg_req) {
		reg_req = FUNC19(mad_reg_req, sizeof *reg_req, GFP_KERNEL);
		if (!reg_req) {
			ret = FUNC0(-ENOMEM);
			goto error3;
		}
	}

	/* Now, fill in the various structures */
	mad_agent_priv->qp_info = &port_priv->qp_info[qpn];
	mad_agent_priv->reg_req = reg_req;
	mad_agent_priv->agent.rmpp_version = rmpp_version;
	mad_agent_priv->agent.device = device;
	mad_agent_priv->agent.recv_handler = recv_handler;
	mad_agent_priv->agent.send_handler = send_handler;
	mad_agent_priv->agent.context = context;
	mad_agent_priv->agent.qp = port_priv->qp_info[qpn].qp;
	mad_agent_priv->agent.port_num = port_num;
	FUNC23(&mad_agent_priv->lock);
	FUNC2(&mad_agent_priv->send_list);
	FUNC2(&mad_agent_priv->wait_list);
	FUNC2(&mad_agent_priv->done_list);
	FUNC2(&mad_agent_priv->rmpp_list);
	FUNC1(&mad_agent_priv->timed_work, timeout_sends);
	FUNC2(&mad_agent_priv->local_list);
	FUNC3(&mad_agent_priv->local_work, local_completions);
	FUNC7(&mad_agent_priv->refcount, 1);
	FUNC14(&mad_agent_priv->comp);

	FUNC24(&port_priv->reg_lock, flags);
	mad_agent_priv->agent.hi_tid = ++ib_mad_client_id;

	/*
	 * Make sure MAD registration (if supplied)
	 * is non overlapping with any existing ones
	 */
	if (mad_reg_req) {
		mgmt_class = FUNC8(mad_reg_req->mgmt_class);
		if (!FUNC15(mgmt_class)) {
			class = port_priv->version[mad_reg_req->
						   mgmt_class_version].class;
			if (class) {
				method = class->method_table[mgmt_class];
				if (method) {
					if (FUNC22(&method,
							   mad_reg_req))
						goto error4;
				}
			}
			ret2 = FUNC5(mad_reg_req, mad_agent_priv,
						  mgmt_class);
		} else {
			/* "New" vendor class range */
			vendor = port_priv->version[mad_reg_req->
						    mgmt_class_version].vendor;
			if (vendor) {
				vclass = FUNC26(mgmt_class);
				vendor_class = vendor->vendor_class[vclass];
				if (vendor_class) {
					if (FUNC16(
							vendor_class,
							mad_reg_req))
						goto error4;
				}
			}
			ret2 = FUNC6(mad_reg_req, mad_agent_priv);
		}
		if (ret2) {
			ret = FUNC0(ret2);
			goto error4;
		}
	}

	/* Add mad agent into port's agent list */
	FUNC21(&mad_agent_priv->agent_list, &port_priv->agent_list);
	FUNC25(&port_priv->reg_lock, flags);

	return &mad_agent_priv->agent;

error4:
	FUNC25(&port_priv->reg_lock, flags);
	FUNC18(reg_req);
error3:
	FUNC10(mad_agent_priv->agent.mr);
error2:
	FUNC18(mad_agent_priv);
error1:
	return ret;
}