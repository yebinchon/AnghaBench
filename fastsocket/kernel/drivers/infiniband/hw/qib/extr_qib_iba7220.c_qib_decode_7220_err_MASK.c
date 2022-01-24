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
struct qib_devdata {int /*<<< orphan*/  pport; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HardwareErr ; 
 int /*<<< orphan*/  IBStatusChanged ; 
 int /*<<< orphan*/  InvalidAddrErr ; 
 int /*<<< orphan*/  InvalidEEPCmd ; 
 int QLOGIC_IB_E_PKTERRS ; 
 int QLOGIC_IB_E_SDMAERRS ; 
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
 int /*<<< orphan*/  SendSpecialTriggerErr ; 
 int /*<<< orphan*/  SendUnderRunErr ; 
 int /*<<< orphan*/  SendUnexpectedPktNumErr ; 
 int /*<<< orphan*/  SendUnsupportedVLErr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static int FUNC3(struct qib_devdata *dd, char *buf, size_t blen,
			       u64 err)
{
	int iserr = 1;

	*buf = '\0';
	if (err & QLOGIC_IB_E_PKTERRS) {
		if (!(err & ~QLOGIC_IB_E_PKTERRS))
			iserr = 0;
		if ((err & FUNC0(RcvICRCErr)) &&
		    !(err & (FUNC0(RcvVCRCErr) | FUNC0(RcvEBPErr))))
			FUNC2(buf, "CRC ", blen);
		if (!iserr)
			goto done;
	}
	if (err & FUNC0(RcvHdrLenErr))
		FUNC2(buf, "rhdrlen ", blen);
	if (err & FUNC0(RcvBadTidErr))
		FUNC2(buf, "rbadtid ", blen);
	if (err & FUNC0(RcvBadVersionErr))
		FUNC2(buf, "rbadversion ", blen);
	if (err & FUNC0(RcvHdrErr))
		FUNC2(buf, "rhdr ", blen);
	if (err & FUNC0(SendSpecialTriggerErr))
		FUNC2(buf, "sendspecialtrigger ", blen);
	if (err & FUNC0(RcvLongPktLenErr))
		FUNC2(buf, "rlongpktlen ", blen);
	if (err & FUNC0(RcvMaxPktLenErr))
		FUNC2(buf, "rmaxpktlen ", blen);
	if (err & FUNC0(RcvMinPktLenErr))
		FUNC2(buf, "rminpktlen ", blen);
	if (err & FUNC0(SendMinPktLenErr))
		FUNC2(buf, "sminpktlen ", blen);
	if (err & FUNC0(RcvFormatErr))
		FUNC2(buf, "rformaterr ", blen);
	if (err & FUNC0(RcvUnsupportedVLErr))
		FUNC2(buf, "runsupvl ", blen);
	if (err & FUNC0(RcvUnexpectedCharErr))
		FUNC2(buf, "runexpchar ", blen);
	if (err & FUNC0(RcvIBFlowErr))
		FUNC2(buf, "ribflow ", blen);
	if (err & FUNC0(SendUnderRunErr))
		FUNC2(buf, "sunderrun ", blen);
	if (err & FUNC0(SendPioArmLaunchErr))
		FUNC2(buf, "spioarmlaunch ", blen);
	if (err & FUNC0(SendUnexpectedPktNumErr))
		FUNC2(buf, "sunexperrpktnum ", blen);
	if (err & FUNC0(SendDroppedSmpPktErr))
		FUNC2(buf, "sdroppedsmppkt ", blen);
	if (err & FUNC0(SendMaxPktLenErr))
		FUNC2(buf, "smaxpktlen ", blen);
	if (err & FUNC0(SendUnsupportedVLErr))
		FUNC2(buf, "sunsupVL ", blen);
	if (err & FUNC0(InvalidAddrErr))
		FUNC2(buf, "invalidaddr ", blen);
	if (err & FUNC0(RcvEgrFullErr))
		FUNC2(buf, "rcvegrfull ", blen);
	if (err & FUNC0(RcvHdrFullErr))
		FUNC2(buf, "rcvhdrfull ", blen);
	if (err & FUNC0(IBStatusChanged))
		FUNC2(buf, "ibcstatuschg ", blen);
	if (err & FUNC0(RcvIBLostLinkErr))
		FUNC2(buf, "riblostlink ", blen);
	if (err & FUNC0(HardwareErr))
		FUNC2(buf, "hardware ", blen);
	if (err & FUNC0(ResetNegated))
		FUNC2(buf, "reset ", blen);
	if (err & QLOGIC_IB_E_SDMAERRS)
		FUNC1(dd->pport, err, buf, blen);
	if (err & FUNC0(InvalidEEPCmd))
		FUNC2(buf, "invalideepromcmd ", blen);
done:
	return iserr;
}