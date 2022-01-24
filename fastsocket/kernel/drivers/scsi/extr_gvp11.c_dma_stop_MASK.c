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
struct TYPE_4__ {int /*<<< orphan*/  this_residual; int /*<<< orphan*/  ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {int SP_DMA; int /*<<< orphan*/  CNTR; } ;
struct TYPE_5__ {scalar_t__ dma_buffer_pool; scalar_t__ dma_bounce_len; int /*<<< orphan*/ * dma_bounce_buffer; scalar_t__ dma_dir; } ;

/* Variables and functions */
 scalar_t__ BUF_SCSI_ALLOCED ; 
 TYPE_3__* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  GVP11_DMAC_INT_ENABLE ; 
 TYPE_2__* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct Scsi_Host *instance, struct scsi_cmnd *SCpnt,
		     int status)
{
    /* stop DMA */
    FUNC0(instance)->SP_DMA = 1;
    /* remove write bit from CONTROL bits */
    FUNC0(instance)->CNTR = GVP11_DMAC_INT_ENABLE;

    /* copy from a bounce buffer, if necessary */
    if (status && FUNC1(instance)->dma_bounce_buffer) {
	if (FUNC1(instance)->dma_dir && SCpnt)
	    FUNC4 (SCpnt->SCp.ptr, 
		    FUNC1(instance)->dma_bounce_buffer,
		    SCpnt->SCp.this_residual);
	
	if (FUNC1(instance)->dma_buffer_pool == BUF_SCSI_ALLOCED)
	    FUNC3 (FUNC1(instance)->dma_bounce_buffer);
	else
	    FUNC2(FUNC1(instance)->dma_bounce_buffer);
	
	FUNC1(instance)->dma_bounce_buffer = NULL;
	FUNC1(instance)->dma_bounce_len = 0;
    }
}