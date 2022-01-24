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
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  csr; } ;
struct TYPE_3__ {int dma_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CSR_DMA_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int,char*,unsigned char*) ; 
 int /*<<< orphan*/  HOSTNO ; 
 int ICR_ASSERT_DATA ; 
 int /*<<< orphan*/  INITIATOR_COMMAND_REG ; 
 int /*<<< orphan*/  MODE_REG ; 
 int MR_DMA_MODE ; 
 int MR_ENABLE_EOP_INTR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RESET_PARITY_INTERRUPT_REG ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 unsigned char SR_IO ; 
 int /*<<< orphan*/  START_DMA_INITIATOR_RECEIVE_REG ; 
 int /*<<< orphan*/  START_DMA_SEND_REG ; 
 int /*<<< orphan*/  TARGET_COMMAND_REG ; 
 TYPE_2__* dregs ; 
 TYPE_1__* hostdata ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int sun3_dma_active ; 
 int /*<<< orphan*/  sun3_dma_setup_done ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned char*) ; 

__attribute__((used)) static int FUNC9( struct Scsi_Host *instance, 
				 unsigned char *phase, int *count,
				 unsigned char **data)
{
    FUNC4(instance);
    register int c = *count;
    register unsigned char p = *phase;
    unsigned long flags;

    /* sanity check */
    if(!sun3_dma_setup_done) {
	 FUNC7("scsi%d: transfer_dma without setup!\n", HOSTNO);
	 FUNC0();
    }
    hostdata->dma_len = c;

    FUNC1("scsi%d: initializing DMA for %s, %d bytes %s %p\n",
	       HOSTNO, (p & SR_IO) ? "reading" : "writing",
	       c, (p & SR_IO) ? "to" : "from", *data);

    /* netbsd turns off ints here, why not be safe and do it too */
    FUNC6(flags);
    
    /* send start chain */
    FUNC8(c, *data);
    
    if (p & SR_IO) {
	    FUNC3(TARGET_COMMAND_REG, 1);
	    FUNC2(RESET_PARITY_INTERRUPT_REG);
	    FUNC3(INITIATOR_COMMAND_REG, 0);
	    FUNC3(MODE_REG, (FUNC2(MODE_REG) | MR_DMA_MODE | MR_ENABLE_EOP_INTR));
	    FUNC3(START_DMA_INITIATOR_RECEIVE_REG, 0);
    } else {
	    FUNC3(TARGET_COMMAND_REG, 0);
	    FUNC2(RESET_PARITY_INTERRUPT_REG);
	    FUNC3(INITIATOR_COMMAND_REG, ICR_ASSERT_DATA);
	    FUNC3(MODE_REG, (FUNC2(MODE_REG) | MR_DMA_MODE | MR_ENABLE_EOP_INTR));
	    FUNC3(START_DMA_SEND_REG, 0);
    }

#ifdef SUN3_SCSI_VME
    dregs->csr |= CSR_DMA_ENABLE;
#endif

    FUNC5(flags);

    sun3_dma_active = 1;
    return 0;
}