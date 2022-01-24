#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iser_device {int cqs_used; struct iser_cq_desc* cq_desc; void* pd; void** rx_cq; void** tx_cq; int /*<<< orphan*/ * cq_tasklet; void* mr; int /*<<< orphan*/  event_handler; TYPE_1__* ib_device; } ;
struct iser_cq_desc {int cq_index; struct iser_device* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_comp_vectors; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISER_MAX_CQ ; 
 int /*<<< orphan*/  ISER_MAX_RX_CQ_LEN ; 
 int /*<<< orphan*/  ISER_MAX_TX_CQ_LEN ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (void*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * iser_cq_callback ; 
 int /*<<< orphan*/  iser_cq_event_callback ; 
 int /*<<< orphan*/  iser_cq_tasklet_fn ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  iser_event_handler ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct iser_cq_desc*) ; 
 struct iser_cq_desc* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct iser_device *device)
{
	int i, j;
	struct iser_cq_desc *cq_desc;

	device->cqs_used = FUNC14(ISER_MAX_CQ, device->ib_device->num_comp_vectors);
	FUNC11("using %d CQs, device %s supports %d vectors\n",
		  device->cqs_used, device->ib_device->name,
		  device->ib_device->num_comp_vectors);

	device->cq_desc = FUNC13(sizeof(struct iser_cq_desc) * device->cqs_used,
				  GFP_KERNEL);
	if (device->cq_desc == NULL)
		goto cq_desc_err;
	cq_desc = device->cq_desc;

	device->pd = FUNC2(device->ib_device);
	if (FUNC1(device->pd))
		goto pd_err;

	for (i = 0; i < device->cqs_used; i++) {
		cq_desc[i].device   = device;
		cq_desc[i].cq_index = i;

		device->rx_cq[i] = FUNC3(device->ib_device,
					  iser_cq_callback,
					  iser_cq_event_callback,
					  (void *)&cq_desc[i],
					  ISER_MAX_RX_CQ_LEN, i);
		if (FUNC1(device->rx_cq[i]))
			goto cq_err;

		device->tx_cq[i] = FUNC3(device->ib_device,
					  NULL, iser_cq_event_callback,
					  (void *)&cq_desc[i],
					  ISER_MAX_TX_CQ_LEN, i);

		if (FUNC1(device->tx_cq[i]))
			goto cq_err;

		if (FUNC9(device->rx_cq[i], IB_CQ_NEXT_COMP))
			goto cq_err;

		FUNC15(&device->cq_tasklet[i],
			     iser_cq_tasklet_fn,
			(unsigned long)&cq_desc[i]);
	}

	device->mr = FUNC7(device->pd, IB_ACCESS_LOCAL_WRITE |
				   IB_ACCESS_REMOTE_WRITE |
				   IB_ACCESS_REMOTE_READ);
	if (FUNC1(device->mr))
		goto dma_mr_err;

	FUNC0(&device->event_handler, device->ib_device,
				iser_event_handler);
	if (FUNC8(&device->event_handler))
		goto handler_err;

	return 0;

handler_err:
	FUNC5(device->mr);
dma_mr_err:
	for (j = 0; j < device->cqs_used; j++)
		FUNC16(&device->cq_tasklet[j]);
cq_err:
	for (j = 0; j < i; j++) {
		if (device->tx_cq[j])
			FUNC6(device->tx_cq[j]);
		if (device->rx_cq[j])
			FUNC6(device->rx_cq[j]);
	}
	FUNC4(device->pd);
pd_err:
	FUNC12(device->cq_desc);
cq_desc_err:
	FUNC10("failed to allocate an IB resource\n");
	return -1;
}