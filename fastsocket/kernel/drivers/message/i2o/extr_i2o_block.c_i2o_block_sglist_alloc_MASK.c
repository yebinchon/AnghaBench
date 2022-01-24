#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct i2o_controller {TYPE_1__* pdev; } ;
struct i2o_block_request {int sg_nents; int /*<<< orphan*/  sg_table; TYPE_2__* req; int /*<<< orphan*/ * dev; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_5__ {int /*<<< orphan*/  q; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int PCI_DMA_FROMDEVICE ; 
 int PCI_DMA_TODEVICE ; 
 scalar_t__ READ ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2o_controller*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static inline int FUNC3(struct i2o_controller *c,
					 struct i2o_block_request *ireq,
					 u32 ** mptr)
{
	int nents;
	enum dma_data_direction direction;

	ireq->dev = &c->pdev->dev;
	nents = FUNC0(ireq->req->q, ireq->req, ireq->sg_table);

	if (FUNC2(ireq->req) == READ)
		direction = PCI_DMA_FROMDEVICE;
	else
		direction = PCI_DMA_TODEVICE;

	ireq->sg_nents = nents;

	return FUNC1(c, ireq->sg_table, nents, direction, mptr);
}