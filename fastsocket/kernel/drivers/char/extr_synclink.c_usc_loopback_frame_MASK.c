#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long mode; } ;
struct mgsl_struct {TYPE_1__ params; scalar_t__ io_base; } ;

/* Variables and functions */
 int BIT1 ; 
 int BIT3 ; 
 int BIT4 ; 
 int BIT8 ; 
 int /*<<< orphan*/  CCR ; 
 scalar_t__ DATAREG ; 
 int /*<<< orphan*/  ENABLE_UNCONDITIONAL ; 
 unsigned long MGSL_MODE_HDLC ; 
 int /*<<< orphan*/  RCSR ; 
 int /*<<< orphan*/  RTCmd_PurgeRxFifo ; 
 int /*<<< orphan*/  RTCmd_PurgeTxFifo ; 
 int /*<<< orphan*/  TC0R ; 
 int /*<<< orphan*/  TCLR ; 
 int /*<<< orphan*/  TCmd_SendFrame ; 
 int /*<<< orphan*/  TXSTATUS_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mgsl_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mgsl_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mgsl_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mgsl_struct*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mgsl_struct*) ; 

__attribute__((used)) static void FUNC12( struct mgsl_struct *info )
{
	int i;
	unsigned long oldmode = info->params.mode;

	info->params.mode = MGSL_MODE_HDLC;
	
	FUNC1( info );

	FUNC11( info );
	FUNC10( info, 1 );

	/* Write 16-bit Time Constant for BRG0 */
	FUNC6( info, TC0R, 0 );
	
	/* Channel Control Register (CCR)
	 *
	 * <15..14>	00	Don't use 32-bit Tx Control Blocks (TCBs)
	 * <13>		0	Trigger Tx on SW Command Disabled
	 * <12>		0	Flag Preamble Disabled
	 * <11..10>	00	Preamble Length = 8-Bits
	 * <9..8>	01	Preamble Pattern = flags
	 * <7..6>	10	Don't use 32-bit Rx status Blocks (RSBs)
	 * <5>		0	Trigger Rx on SW Command Disabled
	 * <4..0>	0	reserved
	 *
	 *	0000 0001 0000 0000 = 0x0100
	 */

	FUNC6( info, CCR, 0x0100 );

	/* SETUP RECEIVER */
	FUNC7( info, RTCmd_PurgeRxFifo );
	FUNC3(info,ENABLE_UNCONDITIONAL);

	/* SETUP TRANSMITTER */
	/* Program the Transmit Character Length Register (TCLR) */
	/* and clear FIFO (TCC is loaded with TCLR on FIFO clear) */
	FUNC6( info, TCLR, 2 );
	FUNC7( info, RTCmd_PurgeTxFifo );

	/* unlatch Tx status bits, and start transmit channel. */
	FUNC9(info,TXSTATUS_ALL);
	FUNC0(0,info->io_base + DATAREG);

	/* ENABLE TRANSMITTER */
	FUNC8( info, TCmd_SendFrame );
	FUNC4(info,ENABLE_UNCONDITIONAL);
							
	/* WAIT FOR RECEIVE COMPLETE */
	for (i=0 ; i<1000 ; i++)
		if (FUNC5( info, RCSR ) & (BIT8 + BIT4 + BIT3 + BIT1))
			break;

	/* clear Internal Data loopback mode */
	FUNC10(info, 0);

	FUNC2(info);

	info->params.mode = oldmode;

}