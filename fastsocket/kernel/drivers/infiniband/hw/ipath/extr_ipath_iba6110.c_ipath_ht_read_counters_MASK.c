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
struct ipath_devdata {int ipath_flags; int /*<<< orphan*/  ipath_lli_errors; int /*<<< orphan*/  ipath_lli_errs; int /*<<< orphan*/  ipath_overrun_thresh_errs; } ;
struct infinipath_counters {scalar_t__ RxDlidFltrCnt; scalar_t__ RxVlErrCnt; int /*<<< orphan*/  LocalLinkIntegrityErrCnt; int /*<<< orphan*/  ExcessBufferOvflCnt; scalar_t__ PcieRetryBufDiagQwordCnt; scalar_t__ RxOtherLocalPhyErrCnt; scalar_t__ RxVL15DroppedPktCnt; void* IBSymbolErrCnt; void* IBLinkDownedCnt; void* IBLinkErrRecoveryCnt; void* IBStatusChangeCnt; scalar_t__ RxP16HdrEgrOvflCnt; scalar_t__ RxP15HdrEgrOvflCnt; scalar_t__ RxP14HdrEgrOvflCnt; scalar_t__ RxP13HdrEgrOvflCnt; scalar_t__ RxP12HdrEgrOvflCnt; scalar_t__ RxP11HdrEgrOvflCnt; scalar_t__ RxP10HdrEgrOvflCnt; scalar_t__ RxP9HdrEgrOvflCnt; void* RxP8HdrEgrOvflCnt; void* RxP7HdrEgrOvflCnt; void* RxP6HdrEgrOvflCnt; void* RxP5HdrEgrOvflCnt; void* RxP4HdrEgrOvflCnt; void* RxP3HdrEgrOvflCnt; void* RxP2HdrEgrOvflCnt; void* RxP1HdrEgrOvflCnt; void* RxP0HdrEgrOvflCnt; void* RxPKeyMismatchCnt; void* RxTIDValidErrCnt; void* RxTIDFullErrCnt; void* RxBufOvflCnt; void* RxLPCRCErrCnt; void* RxEBPCnt; void* RxLinkProblemCnt; void* RxBadFormatCnt; void* RxFlowCtrlErrCnt; void* RxVCRCErrCnt; void* RxICRCErrCnt; void* RxMaxMinLenErrCnt; void* RxLenErrCnt; void* RxDwordCnt; void* RxFlowPktCnt; void* RxDataPktCnt; void* RxDroppedPktCnt; void* TxDroppedPktCnt; void* TxFlowStallCnt; void* TxUnderrunCnt; void* TxMaxMinLenErrCnt; void* TxLenErrCnt; void* TxDwordCnt; void* TxFlowPktCnt; void* TxDataPktCnt; void* TxUnsupVLErrCnt; scalar_t__ TxSDmaDescCnt; void* LBFlowStallCnt; void* LBIntCnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBLinkDownedCnt ; 
 int /*<<< orphan*/  IBLinkErrRecoveryCnt ; 
 int /*<<< orphan*/  IBStatusChangeCnt ; 
 int /*<<< orphan*/  IBSymbolErrCnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IPATH_GPIO_ERRINTRS ; 
 int /*<<< orphan*/  LBFlowStallCnt ; 
 int /*<<< orphan*/  LBIntCnt ; 
 int /*<<< orphan*/  RxBadFormatCnt ; 
 int /*<<< orphan*/  RxBufOvflCnt ; 
 int /*<<< orphan*/  RxDataPktCnt ; 
 int /*<<< orphan*/  RxDroppedPktCnt ; 
 int /*<<< orphan*/  RxDwordCnt ; 
 int /*<<< orphan*/  RxEBPCnt ; 
 int /*<<< orphan*/  RxFlowCtrlErrCnt ; 
 int /*<<< orphan*/  RxFlowPktCnt ; 
 int /*<<< orphan*/  RxICRCErrCnt ; 
 int /*<<< orphan*/  RxLPCRCErrCnt ; 
 int /*<<< orphan*/  RxLenErrCnt ; 
 int /*<<< orphan*/  RxLinkProblemCnt ; 
 int /*<<< orphan*/  RxMaxMinLenErrCnt ; 
 int /*<<< orphan*/  RxP0HdrEgrOvflCnt ; 
 int /*<<< orphan*/  RxP1HdrEgrOvflCnt ; 
 int /*<<< orphan*/  RxP2HdrEgrOvflCnt ; 
 int /*<<< orphan*/  RxP3HdrEgrOvflCnt ; 
 int /*<<< orphan*/  RxP4HdrEgrOvflCnt ; 
 int /*<<< orphan*/  RxP5HdrEgrOvflCnt ; 
 int /*<<< orphan*/  RxP6HdrEgrOvflCnt ; 
 int /*<<< orphan*/  RxP7HdrEgrOvflCnt ; 
 int /*<<< orphan*/  RxP8HdrEgrOvflCnt ; 
 int /*<<< orphan*/  RxPKeyMismatchCnt ; 
 int /*<<< orphan*/  RxTIDFullErrCnt ; 
 int /*<<< orphan*/  RxTIDValidErrCnt ; 
 int /*<<< orphan*/  RxVCRCErrCnt ; 
 int /*<<< orphan*/  TxDataPktCnt ; 
 int /*<<< orphan*/  TxDroppedPktCnt ; 
 int /*<<< orphan*/  TxDwordCnt ; 
 int /*<<< orphan*/  TxFlowPktCnt ; 
 int /*<<< orphan*/  TxFlowStallCnt ; 
 int /*<<< orphan*/  TxLenErrCnt ; 
 int /*<<< orphan*/  TxMaxMinLenErrCnt ; 
 int /*<<< orphan*/  TxUnderrunCnt ; 
 int /*<<< orphan*/  TxUnsupVLErrCnt ; 
 void* FUNC1 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ipath_devdata *dd,
				   struct infinipath_counters *cntrs)
{
	cntrs->LBIntCnt =
		FUNC1(dd, FUNC0(LBIntCnt));
	cntrs->LBFlowStallCnt =
		FUNC1(dd, FUNC0(LBFlowStallCnt));
	cntrs->TxSDmaDescCnt = 0;
	cntrs->TxUnsupVLErrCnt =
		FUNC1(dd, FUNC0(TxUnsupVLErrCnt));
	cntrs->TxDataPktCnt =
		FUNC1(dd, FUNC0(TxDataPktCnt));
	cntrs->TxFlowPktCnt =
		FUNC1(dd, FUNC0(TxFlowPktCnt));
	cntrs->TxDwordCnt =
		FUNC1(dd, FUNC0(TxDwordCnt));
	cntrs->TxLenErrCnt =
		FUNC1(dd, FUNC0(TxLenErrCnt));
	cntrs->TxMaxMinLenErrCnt =
		FUNC1(dd, FUNC0(TxMaxMinLenErrCnt));
	cntrs->TxUnderrunCnt =
		FUNC1(dd, FUNC0(TxUnderrunCnt));
	cntrs->TxFlowStallCnt =
		FUNC1(dd, FUNC0(TxFlowStallCnt));
	cntrs->TxDroppedPktCnt =
		FUNC1(dd, FUNC0(TxDroppedPktCnt));
	cntrs->RxDroppedPktCnt =
		FUNC1(dd, FUNC0(RxDroppedPktCnt));
	cntrs->RxDataPktCnt =
		FUNC1(dd, FUNC0(RxDataPktCnt));
	cntrs->RxFlowPktCnt =
		FUNC1(dd, FUNC0(RxFlowPktCnt));
	cntrs->RxDwordCnt =
		FUNC1(dd, FUNC0(RxDwordCnt));
	cntrs->RxLenErrCnt =
		FUNC1(dd, FUNC0(RxLenErrCnt));
	cntrs->RxMaxMinLenErrCnt =
		FUNC1(dd, FUNC0(RxMaxMinLenErrCnt));
	cntrs->RxICRCErrCnt =
		FUNC1(dd, FUNC0(RxICRCErrCnt));
	cntrs->RxVCRCErrCnt =
		FUNC1(dd, FUNC0(RxVCRCErrCnt));
	cntrs->RxFlowCtrlErrCnt =
		FUNC1(dd, FUNC0(RxFlowCtrlErrCnt));
	cntrs->RxBadFormatCnt =
		FUNC1(dd, FUNC0(RxBadFormatCnt));
	cntrs->RxLinkProblemCnt =
		FUNC1(dd, FUNC0(RxLinkProblemCnt));
	cntrs->RxEBPCnt =
		FUNC1(dd, FUNC0(RxEBPCnt));
	cntrs->RxLPCRCErrCnt =
		FUNC1(dd, FUNC0(RxLPCRCErrCnt));
	cntrs->RxBufOvflCnt =
		FUNC1(dd, FUNC0(RxBufOvflCnt));
	cntrs->RxTIDFullErrCnt =
		FUNC1(dd, FUNC0(RxTIDFullErrCnt));
	cntrs->RxTIDValidErrCnt =
		FUNC1(dd, FUNC0(RxTIDValidErrCnt));
	cntrs->RxPKeyMismatchCnt =
		FUNC1(dd, FUNC0(RxPKeyMismatchCnt));
	cntrs->RxP0HdrEgrOvflCnt =
		FUNC1(dd, FUNC0(RxP0HdrEgrOvflCnt));
	cntrs->RxP1HdrEgrOvflCnt =
		FUNC1(dd, FUNC0(RxP1HdrEgrOvflCnt));
	cntrs->RxP2HdrEgrOvflCnt =
		FUNC1(dd, FUNC0(RxP2HdrEgrOvflCnt));
	cntrs->RxP3HdrEgrOvflCnt =
		FUNC1(dd, FUNC0(RxP3HdrEgrOvflCnt));
	cntrs->RxP4HdrEgrOvflCnt =
		FUNC1(dd, FUNC0(RxP4HdrEgrOvflCnt));
	cntrs->RxP5HdrEgrOvflCnt =
		FUNC1(dd, FUNC0(RxP5HdrEgrOvflCnt));
	cntrs->RxP6HdrEgrOvflCnt =
		FUNC1(dd, FUNC0(RxP6HdrEgrOvflCnt));
	cntrs->RxP7HdrEgrOvflCnt =
		FUNC1(dd, FUNC0(RxP7HdrEgrOvflCnt));
	cntrs->RxP8HdrEgrOvflCnt =
		FUNC1(dd, FUNC0(RxP8HdrEgrOvflCnt));
	cntrs->RxP9HdrEgrOvflCnt = 0;
	cntrs->RxP10HdrEgrOvflCnt = 0;
	cntrs->RxP11HdrEgrOvflCnt = 0;
	cntrs->RxP12HdrEgrOvflCnt = 0;
	cntrs->RxP13HdrEgrOvflCnt = 0;
	cntrs->RxP14HdrEgrOvflCnt = 0;
	cntrs->RxP15HdrEgrOvflCnt = 0;
	cntrs->RxP16HdrEgrOvflCnt = 0;
	cntrs->IBStatusChangeCnt =
		FUNC1(dd, FUNC0(IBStatusChangeCnt));
	cntrs->IBLinkErrRecoveryCnt =
		FUNC1(dd, FUNC0(IBLinkErrRecoveryCnt));
	cntrs->IBLinkDownedCnt =
		FUNC1(dd, FUNC0(IBLinkDownedCnt));
	cntrs->IBSymbolErrCnt =
		FUNC1(dd, FUNC0(IBSymbolErrCnt));
	cntrs->RxVL15DroppedPktCnt = 0;
	cntrs->RxOtherLocalPhyErrCnt = 0;
	cntrs->PcieRetryBufDiagQwordCnt = 0;
	cntrs->ExcessBufferOvflCnt = dd->ipath_overrun_thresh_errs;
	cntrs->LocalLinkIntegrityErrCnt =
		(dd->ipath_flags & IPATH_GPIO_ERRINTRS) ?
		dd->ipath_lli_errs : dd->ipath_lli_errors;
	cntrs->RxVlErrCnt = 0;
	cntrs->RxDlidFltrCnt = 0;
}