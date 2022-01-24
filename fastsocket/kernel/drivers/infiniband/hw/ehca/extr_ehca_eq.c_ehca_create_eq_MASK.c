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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct ib_device {int dummy; } ;
struct ehca_shca {int /*<<< orphan*/  ipz_hca_handle; struct ib_device ib_device; } ;
struct ehca_eqe {int dummy; } ;
struct ehca_eq {int is_initialized; int /*<<< orphan*/  ipz_queue; int /*<<< orphan*/  ist; int /*<<< orphan*/  interrupt_task; int /*<<< orphan*/  pf; int /*<<< orphan*/  ipz_eq_handle; int /*<<< orphan*/  length; int /*<<< orphan*/  irq_spinlock; int /*<<< orphan*/  spinlock; } ;
typedef  enum ehca_eq_type { ____Placeholder_ehca_eq_type } ehca_eq_type ;

/* Variables and functions */
 int const EHCA_EQ ; 
 int const EHCA_NEQ ; 
 int /*<<< orphan*/  EHCA_PAGESIZE ; 
 int EINVAL ; 
 scalar_t__ H_PAGE_REGISTERED ; 
 scalar_t__ H_SUCCESS ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,char*,...) ; 
 int /*<<< orphan*/  ehca_interrupt_eq ; 
 int /*<<< orphan*/  ehca_interrupt_neq ; 
 int /*<<< orphan*/  ehca_tasklet_eq ; 
 int /*<<< orphan*/  ehca_tasklet_neq ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ehca_eq*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC11 (void*) ; 

int FUNC12(struct ehca_shca *shca,
		   struct ehca_eq *eq,
		   const enum ehca_eq_type type, const u32 length)
{
	int ret;
	u64 h_ret;
	u32 nr_pages;
	u32 i;
	void *vpage;
	struct ib_device *ib_dev = &shca->ib_device;

	FUNC9(&eq->spinlock);
	FUNC9(&eq->irq_spinlock);
	eq->is_initialized = 0;

	if (type != EHCA_EQ && type != EHCA_NEQ) {
		FUNC0(ib_dev, "Invalid EQ type %x. eq=%p", type, eq);
		return -EINVAL;
	}
	if (!length) {
		FUNC0(ib_dev, "EQ length must not be zero. eq=%p", eq);
		return -EINVAL;
	}

	h_ret = FUNC1(shca->ipz_hca_handle,
					 &eq->pf,
					 type,
					 length,
					 &eq->ipz_eq_handle,
					 &eq->length,
					 &nr_pages, &eq->ist);

	if (h_ret != H_SUCCESS) {
		FUNC0(ib_dev, "Can't allocate EQ/NEQ. eq=%p", eq);
		return -EINVAL;
	}

	ret = FUNC7(NULL, &eq->ipz_queue, nr_pages,
			     EHCA_PAGESIZE, sizeof(struct ehca_eqe), 0, 0);
	if (!ret) {
		FUNC0(ib_dev, "Can't allocate EQ pages eq=%p", eq);
		goto create_eq_exit1;
	}

	for (i = 0; i < nr_pages; i++) {
		u64 rpage;

		vpage = FUNC6(&eq->ipz_queue);
		if (!vpage)
			goto create_eq_exit2;

		rpage = FUNC11(vpage);
		h_ret = FUNC3(shca->ipz_hca_handle,
						 eq->ipz_eq_handle,
						 &eq->pf,
						 0, 0, rpage, 1);

		if (i == (nr_pages - 1)) {
			/* last page */
			vpage = FUNC6(&eq->ipz_queue);
			if (h_ret != H_SUCCESS || vpage)
				goto create_eq_exit2;
		} else {
			if (h_ret != H_PAGE_REGISTERED)
				goto create_eq_exit2;
		}
	}

	FUNC5(&eq->ipz_queue);

	/* register interrupt handlers and initialize work queues */
	if (type == EHCA_EQ) {
		FUNC10(&eq->interrupt_task, ehca_tasklet_eq, (long)shca);

		ret = FUNC4(eq->ist, ehca_interrupt_eq,
					  IRQF_DISABLED, "ehca_eq",
					  (void *)shca);
		if (ret < 0)
			FUNC0(ib_dev, "Can't map interrupt handler.");
	} else if (type == EHCA_NEQ) {
		FUNC10(&eq->interrupt_task, ehca_tasklet_neq, (long)shca);

		ret = FUNC4(eq->ist, ehca_interrupt_neq,
					  IRQF_DISABLED, "ehca_neq",
					  (void *)shca);
		if (ret < 0)
			FUNC0(ib_dev, "Can't map interrupt handler.");
	}

	eq->is_initialized = 1;

	return 0;

create_eq_exit2:
	FUNC8(NULL, &eq->ipz_queue);

create_eq_exit1:
	FUNC2(shca->ipz_hca_handle, eq);

	return -EINVAL;
}