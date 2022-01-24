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
struct dc390_acb {size_t AdapterIndex; int ACBFlag; int /*<<< orphan*/ * pActiveDCB; scalar_t__ Connected; scalar_t__ last_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAR_FIFO_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_Cmd ; 
 int /*<<< orphan*/  DMA_IDLE_CMD ; 
 size_t EE_DELAY ; 
 int HZ ; 
 int RESET_DETECT ; 
 int RESET_DEV ; 
 int RESET_DONE ; 
 int /*<<< orphan*/  ScsiCmd ; 
 int /*<<< orphan*/  FUNC1 (struct dc390_acb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dc390_acb*) ; 
 int** dc390_eepromBuf ; 
 int /*<<< orphan*/  dc390_laststatus ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5( struct dc390_acb* pACB )
{
    FUNC3 ("DC390: Rst_Detect: laststat = %08x\n", dc390_laststatus);
    //DEBUG0(printk(KERN_INFO "RST_DETECT,"));

    FUNC0 (DMA_Cmd, DMA_IDLE_CMD);
    /* Unlock before ? */
    /* delay half a second */
    FUNC4 (1000);
    FUNC0 (ScsiCmd, CLEAR_FIFO_CMD);
    pACB->last_reset = jiffies + 5*HZ/2
		    + HZ * dc390_eepromBuf[pACB->AdapterIndex][EE_DELAY];
    pACB->Connected = 0;

    if( pACB->ACBFlag & RESET_DEV )
	pACB->ACBFlag |= RESET_DONE;
    else
    {   /* Reset was issued by sb else */
	pACB->ACBFlag |= RESET_DETECT;

	FUNC2( pACB );
	FUNC1( pACB, NULL);
	//dc390_RecoverSRB( pACB );
	pACB->pActiveDCB = NULL;
	pACB->ACBFlag = 0;
    }
    return;
}