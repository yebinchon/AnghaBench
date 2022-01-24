#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {long transferred; scalar_t__ start_addr; scalar_t__ xfer_setup; } ;
struct TYPE_10__ {long scsi_xferred; } ;
struct TYPE_11__ {TYPE_1__ SCp; } ;
struct TYPE_14__ {int /*<<< orphan*/  SCpnt; TYPE_4__ dma; TYPE_3__* host; TYPE_2__ scsi; } ;
struct TYPE_12__ {int /*<<< orphan*/  host_no; } ;
typedef  TYPE_5__ AS_Host ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMAC_TXADRHI ; 
 int /*<<< orphan*/  DMAC_TXADRLO ; 
 int /*<<< orphan*/  DMAC_TXADRMD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static
void FUNC5(AS_Host *host)
{
    if (host->dma.xfer_setup) {
	signed long transferred;
#if (DEBUG & (DEBUG_DMA|DEBUG_WRITE))
	DBG(host->SCpnt, acornscsi_dumpdma(host, "adji"));
#endif
	/*
	 * Calculate correct DMA address - DMA is ahead of SCSI bus while
	 * writing.
	 *  host->scsi.SCp.scsi_xferred is the number of bytes
	 *  actually transferred to/from the SCSI bus.
	 *  host->dma.transferred is the number of bytes transferred
	 *  over DMA since host->dma.start_addr was last set.
	 *
	 * real_dma_addr = host->dma.start_addr + host->scsi.SCp.scsi_xferred
	 *		   - host->dma.transferred
	 */
	transferred = host->scsi.SCp.scsi_xferred - host->dma.transferred;
	if (transferred < 0)
	    FUNC4("scsi%d.%c: Ack! DMA write correction %ld < 0!\n",
		    host->host->host_no, FUNC2(host), transferred);
	else if (transferred == 0)
	    host->dma.xfer_setup = 0;
	else {
	    transferred += host->dma.start_addr;
	    FUNC3(host, DMAC_TXADRLO, transferred);
	    FUNC3(host, DMAC_TXADRMD, transferred >> 8);
	    FUNC3(host, DMAC_TXADRHI, transferred >> 16);
#if (DEBUG & (DEBUG_DMA|DEBUG_WRITE))
	    DBG(host->SCpnt, acornscsi_dumpdma(host, "adjo"));
#endif
	}
    }
}