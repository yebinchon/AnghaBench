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
typedef  int u64 ;
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HardwareErr ; 
 int /*<<< orphan*/  IBStatusChanged ; 
 int /*<<< orphan*/  InvalidAddrErr ; 
 int QLOGIC_IB_E_PKTERRS ; 
 int /*<<< orphan*/  RcvBadTidErr ; 
 int /*<<< orphan*/  RcvBadVersionErr ; 
 int /*<<< orphan*/  RcvEBPErr ; 
 int /*<<< orphan*/  RcvEgrFullErr ; 
 int /*<<< orphan*/  RcvFormatErr ; 
 int /*<<< orphan*/  RcvHdrErr ; 
 int /*<<< orphan*/  RcvHdrFullErr ; 
 int /*<<< orphan*/  RcvHdrLenErr ; 
 int /*<<< orphan*/  RcvIBFlowErr ; 
 int /*<<< orphan*/  RcvIBLostLinkErr ; 
 int /*<<< orphan*/  RcvICRCErr ; 
 int /*<<< orphan*/  RcvLongPktLenErr ; 
 int /*<<< orphan*/  RcvMaxPktLenErr ; 
 int /*<<< orphan*/  RcvMinPktLenErr ; 
 int /*<<< orphan*/  RcvUnexpectedCharErr ; 
 int /*<<< orphan*/  RcvUnsupportedVLErr ; 
 int /*<<< orphan*/  RcvVCRCErr ; 
 int /*<<< orphan*/  ResetNegated ; 
 int /*<<< orphan*/  SendDroppedSmpPktErr ; 
 int /*<<< orphan*/  SendMaxPktLenErr ; 
 int /*<<< orphan*/  SendMinPktLenErr ; 
 int /*<<< orphan*/  SendPioArmLaunchErr ; 
 int /*<<< orphan*/  SendUnderRunErr ; 
 int /*<<< orphan*/  SendUnexpectedPktNumErr ; 
 int /*<<< orphan*/  SendUnsupportedVLErr ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 

__attribute__((used)) static int FUNC2(struct qib_devdata *dd, char *buf, size_t blen,
			       u64 err)
{
	int iserr = 1;

	*buf = '\0';
	if (err & QLOGIC_IB_E_PKTERRS) {
		if (!(err & ~QLOGIC_IB_E_PKTERRS))
			iserr = 0;
		if ((err & FUNC0(RcvICRCErr)) &&
		    !(err&(FUNC0(RcvVCRCErr)|FUNC0(RcvEBPErr))))
			FUNC1(buf, "CRC ", blen);
		if (!iserr)
			goto done;
	}
	if (err & FUNC0(RcvHdrLenErr))
		FUNC1(buf, "rhdrlen ", blen);
	if (err & FUNC0(RcvBadTidErr))
		FUNC1(buf, "rbadtid ", blen);
	if (err & FUNC0(RcvBadVersionErr))
		FUNC1(buf, "rbadversion ", blen);
	if (err & FUNC0(RcvHdrErr))
		FUNC1(buf, "rhdr ", blen);
	if (err & FUNC0(RcvLongPktLenErr))
		FUNC1(buf, "rlongpktlen ", blen);
	if (err & FUNC0(RcvMaxPktLenErr))
		FUNC1(buf, "rmaxpktlen ", blen);
	if (err & FUNC0(RcvMinPktLenErr))
		FUNC1(buf, "rminpktlen ", blen);
	if (err & FUNC0(SendMinPktLenErr))
		FUNC1(buf, "sminpktlen ", blen);
	if (err & FUNC0(RcvFormatErr))
		FUNC1(buf, "rformaterr ", blen);
	if (err & FUNC0(RcvUnsupportedVLErr))
		FUNC1(buf, "runsupvl ", blen);
	if (err & FUNC0(RcvUnexpectedCharErr))
		FUNC1(buf, "runexpchar ", blen);
	if (err & FUNC0(RcvIBFlowErr))
		FUNC1(buf, "ribflow ", blen);
	if (err & FUNC0(SendUnderRunErr))
		FUNC1(buf, "sunderrun ", blen);
	if (err & FUNC0(SendPioArmLaunchErr))
		FUNC1(buf, "spioarmlaunch ", blen);
	if (err & FUNC0(SendUnexpectedPktNumErr))
		FUNC1(buf, "sunexperrpktnum ", blen);
	if (err & FUNC0(SendDroppedSmpPktErr))
		FUNC1(buf, "sdroppedsmppkt ", blen);
	if (err & FUNC0(SendMaxPktLenErr))
		FUNC1(buf, "smaxpktlen ", blen);
	if (err & FUNC0(SendUnsupportedVLErr))
		FUNC1(buf, "sunsupVL ", blen);
	if (err & FUNC0(InvalidAddrErr))
		FUNC1(buf, "invalidaddr ", blen);
	if (err & FUNC0(RcvEgrFullErr))
		FUNC1(buf, "rcvegrfull ", blen);
	if (err & FUNC0(RcvHdrFullErr))
		FUNC1(buf, "rcvhdrfull ", blen);
	if (err & FUNC0(IBStatusChanged))
		FUNC1(buf, "ibcstatuschg ", blen);
	if (err & FUNC0(RcvIBLostLinkErr))
		FUNC1(buf, "riblostlink ", blen);
	if (err & FUNC0(HardwareErr))
		FUNC1(buf, "hardware ", blen);
	if (err & FUNC0(ResetNegated))
		FUNC1(buf, "reset ", blen);
done:
	return iserr;
}