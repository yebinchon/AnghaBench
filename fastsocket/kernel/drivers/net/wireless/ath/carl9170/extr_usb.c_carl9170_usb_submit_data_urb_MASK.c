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
struct urb {int /*<<< orphan*/  status; } ;
struct ar9170 {int /*<<< orphan*/  tx_anch_urbs; int /*<<< orphan*/  tx_err; TYPE_1__* udev; int /*<<< orphan*/  tx_anch; int /*<<< orphan*/  tx_wait; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AR9170_NUM_TX_URBS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 struct urb* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 

__attribute__((used)) static void FUNC11(struct ar9170 *ar)
{
	struct urb *urb;
	int err;

	if (FUNC1(&ar->tx_anch_urbs) > AR9170_NUM_TX_URBS)
		goto err_acc;

	urb = FUNC8(&ar->tx_wait);
	if (!urb)
		goto err_acc;

	FUNC6(urb, &ar->tx_anch);

	err = FUNC9(urb, GFP_ATOMIC);
	if (FUNC5(err)) {
		if (FUNC4()) {
			FUNC2(&ar->udev->dev, "tx submit failed (%d)\n",
				urb->status);
		}

		FUNC10(urb);
		FUNC6(urb, &ar->tx_err);
	}

	FUNC7(urb);

	if (FUNC3(err == 0))
		return;

err_acc:
	FUNC0(&ar->tx_anch_urbs);
}