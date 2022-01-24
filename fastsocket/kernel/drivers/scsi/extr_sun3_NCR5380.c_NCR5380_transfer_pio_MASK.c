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
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_SCSI_DATA_REG ; 
 int /*<<< orphan*/  HOSTNO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 unsigned char ICR_ASSERT_ACK ; 
 unsigned char ICR_ASSERT_ATN ; 
 unsigned char ICR_ASSERT_DATA ; 
 unsigned char ICR_BASE ; 
 int /*<<< orphan*/  INITIATOR_COMMAND_REG ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDEBUG_PIO ; 
 int /*<<< orphan*/  OUTPUT_DATA_REG ; 
 unsigned char PHASE_MASK ; 
 unsigned char PHASE_MSGIN ; 
 unsigned char PHASE_MSGOUT ; 
 unsigned char FUNC5 (unsigned char) ; 
 unsigned char PHASE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 unsigned char SR_IO ; 
 unsigned char SR_MSG ; 
 unsigned char SR_REQ ; 
 int /*<<< orphan*/  STATUS_REG ; 
 int /*<<< orphan*/  TARGET_COMMAND_REG ; 

__attribute__((used)) static int FUNC7( struct Scsi_Host *instance, 
				 unsigned char *phase, int *count,
				 unsigned char **data)
{
    register unsigned char p = *phase, tmp;
    register int c = *count;
    register unsigned char *d = *data;

    /* 
     * The NCR5380 chip will only drive the SCSI bus when the 
     * phase specified in the appropriate bits of the TARGET COMMAND
     * REGISTER match the STATUS REGISTER
     */

    FUNC2(TARGET_COMMAND_REG, FUNC5(p));

    do {
	/* 
	 * Wait for assertion of REQ, after which the phase bits will be 
	 * valid 
	 */
	while (!((tmp = FUNC1(STATUS_REG)) & SR_REQ));

	FUNC0("scsi%d: REQ detected\n", HOSTNO);

	/* Check for phase mismatch */	
	if ((tmp & PHASE_MASK) != p) {
	    FUNC6("scsi%d: phase mismatch\n", HOSTNO);
	    FUNC4(NDEBUG_PIO);
	    break;
	}

	/* Do actual transfer from SCSI bus to / from memory */
	if (!(p & SR_IO)) 
	    FUNC2(OUTPUT_DATA_REG, *d);
	else 
	    *d = FUNC1(CURRENT_SCSI_DATA_REG);

	++d;

	/* 
	 * The SCSI standard suggests that in MSGOUT phase, the initiator
	 * should drop ATN on the last byte of the message phase
	 * after REQ has been asserted for the handshake but before
	 * the initiator raises ACK.
	 */

	if (!(p & SR_IO)) {
	    if (!((p & SR_MSG) && c > 1)) {
		FUNC2(INITIATOR_COMMAND_REG, ICR_BASE | 
		    ICR_ASSERT_DATA);
		FUNC3(NDEBUG_PIO);
		FUNC2(INITIATOR_COMMAND_REG, ICR_BASE | 
			ICR_ASSERT_DATA | ICR_ASSERT_ACK);
	    } else {
		FUNC2(INITIATOR_COMMAND_REG, ICR_BASE |
		    ICR_ASSERT_DATA | ICR_ASSERT_ATN);
		FUNC3(NDEBUG_PIO);
		FUNC2(INITIATOR_COMMAND_REG, ICR_BASE | 
		    ICR_ASSERT_DATA | ICR_ASSERT_ATN | ICR_ASSERT_ACK);
	    }
	} else {
	    FUNC3(NDEBUG_PIO);
	    FUNC2(INITIATOR_COMMAND_REG, ICR_BASE | ICR_ASSERT_ACK);
	}

	while (FUNC1(STATUS_REG) & SR_REQ);

	FUNC0("scsi%d: req false, handshake complete\n", HOSTNO);

/*
 * We have several special cases to consider during REQ/ACK handshaking : 
 * 1.  We were in MSGOUT phase, and we are on the last byte of the 
 *	message.  ATN must be dropped as ACK is dropped.
 *
 * 2.  We are in a MSGIN phase, and we are on the last byte of the  
 *	message.  We must exit with ACK asserted, so that the calling
 *	code may raise ATN before dropping ACK to reject the message.
 *
 * 3.  ACK and ATN are clear and the target may proceed as normal.
 */
	if (!(p == PHASE_MSGIN && c == 1)) {  
	    if (p == PHASE_MSGOUT && c > 1)
		FUNC2(INITIATOR_COMMAND_REG, ICR_BASE | ICR_ASSERT_ATN);
	    else
		FUNC2(INITIATOR_COMMAND_REG, ICR_BASE);
	} 
    } while (--c);

    FUNC6("scsi%d: residual %d\n", HOSTNO, c);

    *count = c;
    *data = d;
    tmp = FUNC1(STATUS_REG);
    /* The phase read from the bus is valid if either REQ is (already)
     * asserted or if ACK hasn't been released yet. The latter is the case if
     * we're in MSGIN and all wanted bytes have been received. */
    if ((tmp & SR_REQ) || (p == PHASE_MSGIN && c == 0))
	*phase = tmp & PHASE_MASK;
    else 
	*phase = PHASE_UNKNOWN;

    if (!c || (*phase == p))
	return 0;
    else 
	return -1;
}