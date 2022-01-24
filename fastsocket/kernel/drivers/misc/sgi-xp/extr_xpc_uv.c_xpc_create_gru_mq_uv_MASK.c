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
struct xpc_gru_mq_uv {unsigned long order; struct xpc_gru_mq_uv* gru_mq_desc; scalar_t__ address; int /*<<< orphan*/  irq; int /*<<< orphan*/  mmr_value; int /*<<< orphan*/  mmr_blade; } ;
struct uv_IO_APIC_route_entry {int /*<<< orphan*/  dest; int /*<<< orphan*/  vector; } ;
struct page {int dummy; } ;
struct gru_message_queue_desc {int dummy; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct xpc_gru_mq_uv* FUNC0 (int) ; 
 int GFP_KERNEL ; 
 int GFP_THISNODE ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int __GFP_ZERO ; 
 struct page* FUNC2 (int,int,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int) ; 
 int FUNC7 (unsigned int) ; 
 int FUNC8 (struct xpc_gru_mq_uv*,scalar_t__,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xpc_gru_mq_uv*) ; 
 struct xpc_gru_mq_uv* FUNC10 (int,int) ; 
 struct xpc_gru_mq_uv* FUNC11 (int,int) ; 
 scalar_t__ FUNC12 (struct page*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int xpSuccess ; 
 int FUNC16 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int FUNC18 (struct xpc_gru_mq_uv*,int,char*) ; 
 int FUNC19 (struct xpc_gru_mq_uv*) ; 
 int /*<<< orphan*/  FUNC20 (struct xpc_gru_mq_uv*) ; 
 int /*<<< orphan*/  xpc_part ; 
 int /*<<< orphan*/  FUNC21 (struct xpc_gru_mq_uv*) ; 

__attribute__((used)) static struct xpc_gru_mq_uv *
FUNC22(unsigned int mq_size, int cpu, char *irq_name,
		     irq_handler_t irq_handler)
{
	enum xp_retval xp_ret;
	int ret;
	int nid;
	int nasid;
	int pg_order;
	struct page *page;
	struct xpc_gru_mq_uv *mq;
	struct uv_IO_APIC_route_entry *mmr_value;

	mq = FUNC10(sizeof(struct xpc_gru_mq_uv), GFP_KERNEL);
	if (mq == NULL) {
		FUNC4(xpc_part, "xpc_create_gru_mq_uv() failed to kmalloc() "
			"a xpc_gru_mq_uv structure\n");
		ret = -ENOMEM;
		goto out_0;
	}

	mq->gru_mq_desc = FUNC11(sizeof(struct gru_message_queue_desc),
				  GFP_KERNEL);
	if (mq->gru_mq_desc == NULL) {
		FUNC4(xpc_part, "xpc_create_gru_mq_uv() failed to kmalloc() "
			"a gru_message_queue_desc structure\n");
		ret = -ENOMEM;
		goto out_1;
	}

	pg_order = FUNC7(mq_size);
	mq->order = pg_order + PAGE_SHIFT;
	mq_size = 1UL << mq->order;

	mq->mmr_blade = FUNC14(cpu);

	nid = FUNC3(cpu);
	page = FUNC2(nid,
				      GFP_KERNEL | __GFP_ZERO | GFP_THISNODE,
				      pg_order);
	if (page == NULL) {
		FUNC4(xpc_part, "xpc_create_gru_mq_uv() failed to alloc %d "
			"bytes of memory on nid=%d for GRU mq\n", mq_size, nid);
		ret = -ENOMEM;
		goto out_2;
	}
	mq->address = FUNC12(page);

	/* enable generation of irq when GRU mq operation occurs to this mq */
	ret = FUNC19(mq);
	if (ret != 0)
		goto out_3;

	ret = FUNC18(mq, cpu, irq_name);
	if (ret != 0)
		goto out_4;

	ret = FUNC13(mq->irq, irq_handler, 0, irq_name, NULL);
	if (ret != 0) {
		FUNC4(xpc_part, "request_irq(irq=%d) returned error=%d\n",
			mq->irq, -ret);
		goto out_5;
	}

	nasid = FUNC1(FUNC15(cpu));

	mmr_value = (struct uv_IO_APIC_route_entry *)&mq->mmr_value;
	ret = FUNC8(mq->gru_mq_desc, mq->address, mq_size,
				     nasid, mmr_value->vector, mmr_value->dest);
	if (ret != 0) {
		FUNC4(xpc_part, "gru_create_message_queue() returned "
			"error=%d\n", ret);
		ret = -EINVAL;
		goto out_6;
	}

	/* allow other partitions to access this GRU mq */
	xp_ret = FUNC16(FUNC17(mq->address), mq_size);
	if (xp_ret != xpSuccess) {
		ret = -EACCES;
		goto out_6;
	}

	return mq;

	/* something went wrong */
out_6:
	FUNC5(mq->irq, NULL);
out_5:
	FUNC21(mq);
out_4:
	FUNC20(mq);
out_3:
	FUNC6((unsigned long)mq->address, pg_order);
out_2:
	FUNC9(mq->gru_mq_desc);
out_1:
	FUNC9(mq);
out_0:
	return FUNC0(ret);
}