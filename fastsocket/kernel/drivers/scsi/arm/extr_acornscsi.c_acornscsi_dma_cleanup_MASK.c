#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_14__ {TYPE_10__ SCp; } ;
struct TYPE_13__ {scalar_t__ direction; unsigned int xfer_start; unsigned int xfer_length; unsigned int start_addr; unsigned int transferred; scalar_t__ xfer_setup; int /*<<< orphan*/  xfer_ptr; scalar_t__ xfer_required; } ;
struct TYPE_15__ {int /*<<< orphan*/  SCpnt; TYPE_2__ scsi; TYPE_1__ dma; } ;
typedef  TYPE_3__ AS_Host ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMAC_MASKREG ; 
 scalar_t__ DMA_IN ; 
 int /*<<< orphan*/  MASK_ON ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_10__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 unsigned int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC7(AS_Host *host)
{
    FUNC6(host, DMAC_MASKREG, MASK_ON);
    FUNC5(host);

    /*
     * Check for a pending transfer
     */
    if (host->dma.xfer_required) {
	host->dma.xfer_required = 0;
	if (host->dma.direction == DMA_IN)
	    FUNC1(host, host->dma.xfer_ptr,
				 host->dma.xfer_start, host->dma.xfer_length);
    }

    /*
     * Has a transfer been setup?
     */
    if (host->dma.xfer_setup) {
	unsigned int transferred;

	host->dma.xfer_setup = 0;

#if (DEBUG & DEBUG_DMA)
	DBG(host->SCpnt, acornscsi_dumpdma(host, "cupi"));
#endif

	/*
	 * Calculate number of bytes transferred from DMA.
	 */
	transferred = FUNC4(host) - host->dma.start_addr;
	host->dma.transferred += transferred;

	if (host->dma.direction == DMA_IN)
	    FUNC1(host, host->scsi.SCp.ptr,
				 host->dma.start_addr, transferred);

	/*
	 * Update SCSI pointers
	 */
	FUNC2(host, &host->scsi.SCp, transferred);
#if (DEBUG & DEBUG_DMA)
	DBG(host->SCpnt, acornscsi_dumpdma(host, "cupo"));
#endif
    }
}