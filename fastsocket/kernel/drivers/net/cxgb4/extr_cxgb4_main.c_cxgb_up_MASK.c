#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct adapter {int flags; int /*<<< orphan*/  pdev_dev; TYPE_3__** port; TYPE_2__* pdev; TYPE_1__* msix_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  vec; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXGB4_STATE_UP ; 
 int FULL_INIT_DONE ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int USING_MSI ; 
 int USING_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adapter*) ; 
 int FUNC6 (struct adapter*) ; 
 int FUNC7 (struct adapter*) ; 
 int FUNC8 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*) ; 
 int /*<<< orphan*/  t4_nondata_intr ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*) ; 

__attribute__((used)) static int FUNC13(struct adapter *adap)
{
	int err;

	err = FUNC8(adap);
	if (err)
		goto out;
	err = FUNC7(adap);
	if (err)
		goto freeq;

	if (adap->flags & USING_MSIX) {
		FUNC3(adap);
		err = FUNC5(adap->msix_info[0].vec, t4_nondata_intr, 0,
				  adap->msix_info[0].desc, adap);
		if (err)
			goto irq_err;

		err = FUNC6(adap);
		if (err) {
			FUNC2(adap->msix_info[0].vec, adap);
			goto irq_err;
		}
	} else {
		err = FUNC5(adap->pdev->irq, FUNC11(adap),
				  (adap->flags & USING_MSI) ? 0 : IRQF_SHARED,
				  adap->port[0]->name, adap);
		if (err)
			goto irq_err;
	}
	FUNC1(adap);
	FUNC12(adap);
	FUNC10(adap);
	adap->flags |= FULL_INIT_DONE;
	FUNC4(adap, CXGB4_STATE_UP);
 out:
	return err;
 irq_err:
	FUNC0(adap->pdev_dev, "request_irq failed, err %d\n", err);
 freeq:
	FUNC9(adap);
	goto out;
}