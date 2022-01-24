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
struct qdr {int dummy; } ;
struct qdio_irq {struct qdr* qdr; scalar_t__ chsc_page; int /*<<< orphan*/  setup_mutex; } ;
struct qdio_initialize {TYPE_3__* cdev; int /*<<< orphan*/  no_output_qs; int /*<<< orphan*/  no_input_qs; int /*<<< orphan*/  output_sbal_addr_array; int /*<<< orphan*/  input_sbal_addr_array; int /*<<< orphan*/  output_handler; int /*<<< orphan*/  input_handler; } ;
struct TYPE_6__ {TYPE_2__* private; } ;
struct TYPE_4__ {int /*<<< orphan*/  sch_no; } ;
struct TYPE_5__ {struct qdio_irq* qdio_data; TYPE_1__ schid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  QDIO_IRQ_STATE_INACTIVE ; 
 int /*<<< orphan*/  QDIO_MAX_QUEUES_PER_IRQ ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qdio_initialize*,struct qdio_irq*) ; 
 scalar_t__ FUNC5 (struct qdio_irq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qdio_irq*) ; 
 int /*<<< orphan*/  FUNC7 (struct qdio_irq*,int /*<<< orphan*/ ) ; 

int FUNC8(struct qdio_initialize *init_data)
{
	struct qdio_irq *irq_ptr;

	FUNC0("qallocate:%4x", init_data->cdev->private->schid.sch_no);

	if ((init_data->no_input_qs && !init_data->input_handler) ||
	    (init_data->no_output_qs && !init_data->output_handler))
		return -EINVAL;

	if ((init_data->no_input_qs > QDIO_MAX_QUEUES_PER_IRQ) ||
	    (init_data->no_output_qs > QDIO_MAX_QUEUES_PER_IRQ))
		return -EINVAL;

	if ((!init_data->input_sbal_addr_array) ||
	    (!init_data->output_sbal_addr_array))
		return -EINVAL;

	/* irq_ptr must be in GFP_DMA since it contains ccw1.cda */
	irq_ptr = (void *) FUNC2(GFP_KERNEL | GFP_DMA);
	if (!irq_ptr)
		goto out_err;

	FUNC3(&irq_ptr->setup_mutex);
	FUNC4(init_data, irq_ptr);

	/*
	 * Allocate a page for the chsc calls in qdio_establish.
	 * Must be pre-allocated since a zfcp recovery will call
	 * qdio_establish. In case of low memory and swap on a zfcp disk
	 * we may not be able to allocate memory otherwise.
	 */
	irq_ptr->chsc_page = FUNC2(GFP_KERNEL);
	if (!irq_ptr->chsc_page)
		goto out_rel;

	/* qdr is used in ccw1.cda which is u32 */
	irq_ptr->qdr = (struct qdr *) FUNC2(GFP_KERNEL | GFP_DMA);
	if (!irq_ptr->qdr)
		goto out_rel;
	FUNC1((unsigned long)irq_ptr->qdr & 0xfff);

	if (FUNC5(irq_ptr, init_data->no_input_qs,
			     init_data->no_output_qs))
		goto out_rel;

	init_data->cdev->private->qdio_data = irq_ptr;
	FUNC7(irq_ptr, QDIO_IRQ_STATE_INACTIVE);
	return 0;
out_rel:
	FUNC6(irq_ptr);
out_err:
	return -ENOMEM;
}