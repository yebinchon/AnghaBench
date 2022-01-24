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
struct qib_ibport {scalar_t__ sm_lid; unsigned long subnet_timeout; scalar_t__ trap_timeout; int /*<<< orphan*/  lock; TYPE_1__* sm_ah; int /*<<< orphan*/  tid; struct ib_mad_agent* send_agent; } ;
struct ib_smp {int class_version; int /*<<< orphan*/  data; int /*<<< orphan*/  attr_id; int /*<<< orphan*/  tid; int /*<<< orphan*/  method; int /*<<< orphan*/  mgmt_class; int /*<<< orphan*/  base_version; } ;
struct ib_mad_send_buf {struct ib_mad_send_buf* ah; struct ib_smp* mad; } ;
struct ib_mad_agent {int dummy; } ;
struct ib_ah {struct ib_ah* ah; struct ib_smp* mad; } ;
struct TYPE_4__ {int lflags; } ;
struct TYPE_3__ {struct ib_mad_send_buf ibah; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IB_LID_PERMISSIVE ; 
 int /*<<< orphan*/  IB_MGMT_BASE_VERSION ; 
 int /*<<< orphan*/  IB_MGMT_CLASS_SUBN_LID_ROUTED ; 
 int /*<<< orphan*/  IB_MGMT_MAD_DATA ; 
 int /*<<< orphan*/  IB_MGMT_MAD_HDR ; 
 int /*<<< orphan*/  IB_MGMT_METHOD_TRAP ; 
 int /*<<< orphan*/  IB_SMP_ATTR_NOTICE ; 
 scalar_t__ FUNC0 (struct ib_mad_send_buf*) ; 
 int FUNC1 (struct ib_mad_send_buf*) ; 
 int QIBL_LINKACTIVE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ib_mad_send_buf* FUNC4 (struct ib_mad_agent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_mad_send_buf*) ; 
 int FUNC6 (struct ib_mad_send_buf*,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,unsigned int) ; 
 TYPE_2__* FUNC8 (struct qib_ibport*) ; 
 struct ib_mad_send_buf* FUNC9 (struct qib_ibport*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC13 (struct ib_mad_send_buf*) ; 
 scalar_t__ FUNC14 (unsigned long) ; 

__attribute__((used)) static void FUNC15(struct qib_ibport *ibp, void *data, unsigned len)
{
	struct ib_mad_send_buf *send_buf;
	struct ib_mad_agent *agent;
	struct ib_smp *smp;
	int ret;
	unsigned long flags;
	unsigned long timeout;

	agent = ibp->send_agent;
	if (!agent)
		return;

	/* o14-3.2.1 */
	if (!(FUNC8(ibp)->lflags & QIBL_LINKACTIVE))
		return;

	/* o14-2 */
	if (ibp->trap_timeout && FUNC12(jiffies, ibp->trap_timeout))
		return;

	send_buf = FUNC4(agent, 0, 0, 0, IB_MGMT_MAD_HDR,
				      IB_MGMT_MAD_DATA, GFP_ATOMIC);
	if (FUNC0(send_buf))
		return;

	smp = send_buf->mad;
	smp->base_version = IB_MGMT_BASE_VERSION;
	smp->mgmt_class = IB_MGMT_CLASS_SUBN_LID_ROUTED;
	smp->class_version = 1;
	smp->method = IB_MGMT_METHOD_TRAP;
	ibp->tid++;
	smp->tid = FUNC3(ibp->tid);
	smp->attr_id = IB_SMP_ATTR_NOTICE;
	/* o14-1: smp->mkey = 0; */
	FUNC7(smp->data, data, len);

	FUNC10(&ibp->lock, flags);
	if (!ibp->sm_ah) {
		if (ibp->sm_lid != FUNC2(IB_LID_PERMISSIVE)) {
			struct ib_ah *ah;

			ah = FUNC9(ibp, ibp->sm_lid);
			if (FUNC0(ah))
				ret = FUNC1(ah);
			else {
				send_buf->ah = ah;
				ibp->sm_ah = FUNC13(ah);
				ret = 0;
			}
		} else
			ret = -EINVAL;
	} else {
		send_buf->ah = &ibp->sm_ah->ibah;
		ret = 0;
	}
	FUNC11(&ibp->lock, flags);

	if (!ret)
		ret = FUNC6(send_buf, NULL);
	if (!ret) {
		/* 4.096 usec. */
		timeout = (4096 * (1UL << ibp->subnet_timeout)) / 1000;
		ibp->trap_timeout = jiffies + FUNC14(timeout);
	} else {
		FUNC5(send_buf);
		ibp->trap_timeout = 0;
	}
}