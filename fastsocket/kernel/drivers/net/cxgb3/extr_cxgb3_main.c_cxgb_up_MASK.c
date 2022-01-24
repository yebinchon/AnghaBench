#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ rev; } ;
struct TYPE_11__ {TYPE_4__* qs; } ;
struct adapter {int flags; TYPE_6__ params; int /*<<< orphan*/  name; TYPE_5__ sge; TYPE_2__* pdev; TYPE_1__* msix_info; } ;
struct TYPE_9__ {int /*<<< orphan*/  polling; } ;
struct TYPE_10__ {TYPE_3__ rspq; } ;
struct TYPE_8__ {int /*<<< orphan*/  irq; } ;
struct TYPE_7__ {int /*<<< orphan*/  vec; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_INT_CAUSE ; 
 int /*<<< orphan*/  A_TP_INT_ENABLE ; 
 int /*<<< orphan*/  A_TP_PARA_REG5 ; 
 int /*<<< orphan*/  A_ULPRX_TDDP_PSZ ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int FULL_INIT_DONE ; 
 int /*<<< orphan*/  FW_VERSION_MAJOR ; 
 int /*<<< orphan*/  FW_VERSION_MICRO ; 
 int /*<<< orphan*/  FW_VERSION_MINOR ; 
 int F_ARPLUTPERR ; 
 int F_CMCACHEPERR ; 
 int /*<<< orphan*/  F_RXDDPOFFINIT ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int NAPI_INIT ; 
 scalar_t__ PAGE_SHIFT ; 
 int QUEUES_BOUND ; 
 scalar_t__ T3_REV_C ; 
 int TP_PARITY_INIT ; 
 int /*<<< orphan*/  TP_VERSION_MAJOR ; 
 int /*<<< orphan*/  TP_VERSION_MICRO ; 
 int /*<<< orphan*/  TP_VERSION_MINOR ; 
 int USING_MSI ; 
 int USING_MSIX ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 scalar_t__ FUNC8 (struct adapter*) ; 
 scalar_t__ FUNC9 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adapter*) ; 
 int FUNC12 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*) ; 
 int FUNC14 (struct adapter*) ; 
 int /*<<< orphan*/  t3_async_intr_handler ; 
 int FUNC15 (struct adapter*) ; 
 int FUNC16 (struct adapter*) ; 
 int FUNC17 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC19 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC20 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC21 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC24 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC25 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int FUNC26 (struct adapter*) ; 
 int FUNC27 (struct adapter*) ; 

__attribute__((used)) static int FUNC28(struct adapter *adap)
{
	int err;

	if (!(adap->flags & FULL_INIT_DONE)) {
		err = FUNC15(adap);
		if (err == -EINVAL) {
			err = FUNC27(adap);
			FUNC1(adap, "FW upgrade to %d.%d.%d %s\n",
				FW_VERSION_MAJOR, FW_VERSION_MINOR,
				FW_VERSION_MICRO, err ? "failed" : "succeeded");
		}

		err = FUNC16(adap);
		if (err == -EINVAL) {
			err = FUNC26(adap);
			FUNC1(adap, "TP upgrade to %d.%d.%d %s\n",
				TP_VERSION_MAJOR, TP_VERSION_MINOR,
				TP_VERSION_MICRO, err ? "failed" : "succeeded");
		}

		/*
		 * Clear interrupts now to catch errors if t3_init_hw fails.
		 * We clear them again later as initialization may trigger
		 * conditions that can interrupt.
		 */
		FUNC18(adap);

		err = FUNC17(adap, 0);
		if (err)
			goto out;

		FUNC22(adap, A_TP_PARA_REG5, 0, F_RXDDPOFFINIT);
		FUNC25(adap, A_ULPRX_TDDP_PSZ, FUNC2(PAGE_SHIFT - 12));

		err = FUNC14(adap);
		if (err)
			goto out;

		FUNC13(adap);
		if (!(adap->flags & NAPI_INIT))
			FUNC7(adap);

		FUNC24(adap);
		adap->flags |= FULL_INIT_DONE;
	}

	FUNC18(adap);

	if (adap->flags & USING_MSIX) {
		FUNC10(adap);
		err = FUNC11(adap->msix_info[0].vec,
				  t3_async_intr_handler, 0,
				  adap->msix_info[0].desc, adap);
		if (err)
			goto irq_err;

		err = FUNC12(adap);
		if (err) {
			FUNC5(adap->msix_info[0].vec, adap);
			goto irq_err;
		}
	} else if ((err = FUNC11(adap->pdev->irq,
				      FUNC21(adap,
						      adap->sge.qs[0].rspq.
						      polling),
				      (adap->flags & USING_MSI) ?
				       0 : IRQF_SHARED,
				      adap->name, adap)))
		goto irq_err;

	FUNC4(adap);
	FUNC23(adap);
	FUNC20(adap);

	if (adap->params.rev >= T3_REV_C && !(adap->flags & TP_PARITY_INIT) &&
	    FUNC9(adap) && FUNC8(adap) == 0)
		adap->flags |= TP_PARITY_INIT;

	if (adap->flags & TP_PARITY_INIT) {
		FUNC25(adap, A_TP_INT_CAUSE,
			     F_CMCACHEPERR | F_ARPLUTPERR);
		FUNC25(adap, A_TP_INT_ENABLE, 0x7fbfffff);
	}

	if (!(adap->flags & QUEUES_BOUND)) {
		int ret = FUNC3(adap);

		if (ret < 0) {
			FUNC0(adap, "failed to bind qsets, err %d\n", ret);
			FUNC19(adap);
			FUNC6(adap);
			err = ret;
			goto out;
		}
		adap->flags |= QUEUES_BOUND;
	}

out:
	return err;
irq_err:
	FUNC0(adap, "request_irq failed, err %d\n", err);
	goto out;
}