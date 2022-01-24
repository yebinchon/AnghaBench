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
struct TYPE_5__ {int /*<<< orphan*/  SenderSize; void* XferState; } ;
struct hw_fib {TYPE_2__ header; scalar_t__ data; } ;
struct fib {int hw_fib_pa; struct fib* next; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  event_wait; struct hw_fib* hw_fib_va; void* data; struct aac_dev* dev; scalar_t__ flags; } ;
struct aac_fib_xporthdr {int dummy; } ;
struct aac_dev {int hw_fib_pa; int max_fib_size; struct fib* fibs; struct fib* free_fib; TYPE_3__* scsi_host_ptr; struct hw_fib* hw_fib_va; TYPE_1__* init; } ;
typedef  int dma_addr_t ;
struct TYPE_6__ {int can_queue; } ;
struct TYPE_4__ {void* MaxIoCommands; } ;

/* Variables and functions */
 int AAC_NUM_MGT_FIB ; 
 int ALIGN32 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct hw_fib*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct aac_dev * dev)
{
	struct fib *fibptr;
	struct hw_fib *hw_fib;
	dma_addr_t hw_fib_pa;
	int i;

	while (((i = FUNC2(dev)) == -ENOMEM)
	 && (dev->scsi_host_ptr->can_queue > (64 - AAC_NUM_MGT_FIB))) {
		dev->init->MaxIoCommands = FUNC1((dev->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB) >> 1);
		dev->scsi_host_ptr->can_queue = FUNC4(dev->init->MaxIoCommands) - AAC_NUM_MGT_FIB;
	}
	if (i<0)
		return -ENOMEM;

	/* 32 byte alignment for PMC */
	hw_fib_pa = (dev->hw_fib_pa + (ALIGN32 - 1)) & ~(ALIGN32 - 1);
	dev->hw_fib_va = (struct hw_fib *)((unsigned char *)dev->hw_fib_va +
		(hw_fib_pa - dev->hw_fib_pa));
	dev->hw_fib_pa = hw_fib_pa;
	FUNC5(dev->hw_fib_va, 0,
		(dev->max_fib_size + sizeof(struct aac_fib_xporthdr)) *
		(dev->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB));
	/* add Xport header */
	dev->hw_fib_va = (struct hw_fib *)((unsigned char *)dev->hw_fib_va +
		sizeof(struct aac_fib_xporthdr));
	dev->hw_fib_pa += sizeof(struct aac_fib_xporthdr);

	hw_fib = dev->hw_fib_va;
	hw_fib_pa = dev->hw_fib_pa;
	/*
	 *	Initialise the fibs
	 */
	for (i = 0, fibptr = &dev->fibs[i];
		i < (dev->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB);
		i++, fibptr++)
	{
		fibptr->flags = 0;
		fibptr->dev = dev;
		fibptr->hw_fib_va = hw_fib;
		fibptr->data = (void *) fibptr->hw_fib_va->data;
		fibptr->next = fibptr+1;	/* Forward chain the fibs */
		FUNC3(&fibptr->event_wait);
		FUNC6(&fibptr->event_lock);
		hw_fib->header.XferState = FUNC1(0xffffffff);
		hw_fib->header.SenderSize = FUNC0(dev->max_fib_size);
		fibptr->hw_fib_pa = hw_fib_pa;
		hw_fib = (struct hw_fib *)((unsigned char *)hw_fib +
			dev->max_fib_size + sizeof(struct aac_fib_xporthdr));
		hw_fib_pa = hw_fib_pa +
			dev->max_fib_size + sizeof(struct aac_fib_xporthdr);
	}
	/*
	 *	Add the fib chain to the free list
	 */
	dev->fibs[dev->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB - 1].next = NULL;
	/*
	 *	Enable this to debug out of queue space
	 */
	dev->free_fib = &dev->fibs[0];
	return 0;
}