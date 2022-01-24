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
struct ar9170 {int /*<<< orphan*/  tx_cmd_urbs; int /*<<< orphan*/  tx_anch; int /*<<< orphan*/  tx_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 struct urb* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 

__attribute__((used)) static int FUNC8(struct ar9170 *ar)
{
	struct urb *urb;
	int err;

	if (FUNC1(&ar->tx_cmd_urbs) != 1) {
		FUNC0(&ar->tx_cmd_urbs);
		return 0;
	}

	urb = FUNC5(&ar->tx_cmd);
	if (!urb) {
		FUNC0(&ar->tx_cmd_urbs);
		return 0;
	}

	FUNC3(urb, &ar->tx_anch);
	err = FUNC6(urb, GFP_ATOMIC);
	if (FUNC2(err)) {
		FUNC7(urb);
		FUNC0(&ar->tx_cmd_urbs);
	}
	FUNC4(urb);

	return err;
}