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
struct urb {int dummy; } ;
struct ar9170 {int /*<<< orphan*/  rx_anch_urbs; int /*<<< orphan*/  rx_pool_urbs; int /*<<< orphan*/  rx_pool; int /*<<< orphan*/  rx_anch; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_NUM_RX_URBS ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 struct urb* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 

__attribute__((used)) static int FUNC9(struct ar9170 *ar, gfp_t gfp)
{
	struct urb *urb;
	int err = 0, runs = 0;

	while ((FUNC2(&ar->rx_anch_urbs) < AR9170_NUM_RX_URBS) &&
		(runs++ < AR9170_NUM_RX_URBS)) {
		err = -ENOSPC;
		urb = FUNC6(&ar->rx_pool);
		if (urb) {
			FUNC4(urb, &ar->rx_anch);
			err = FUNC7(urb, gfp);
			if (FUNC3(err)) {
				FUNC8(urb);
				FUNC4(urb, &ar->rx_pool);
			} else {
				FUNC0(&ar->rx_pool_urbs);
				FUNC1(&ar->rx_anch_urbs);
			}
			FUNC5(urb);
		}
	}

	return err;
}