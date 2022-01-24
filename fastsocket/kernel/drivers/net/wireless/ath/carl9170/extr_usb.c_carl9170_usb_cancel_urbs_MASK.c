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
struct ar9170 {int /*<<< orphan*/  tx_cmd; int /*<<< orphan*/  rx_pool; int /*<<< orphan*/  rx_work; int /*<<< orphan*/  usb_tasklet; int /*<<< orphan*/  rx_anch; int /*<<< orphan*/  tx_anch; TYPE_1__* udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_UNKNOWN_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct ar9170*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ar9170 *ar)
{
	int err;

	FUNC0(ar, CARL9170_UNKNOWN_STATE);

	err = FUNC1(ar);
	if (err)
		FUNC3(&ar->udev->dev, "stuck tx urbs!\n");

	FUNC5(&ar->tx_anch);
	FUNC2(ar);
	FUNC5(&ar->rx_anch);

	FUNC4(&ar->usb_tasklet);

	FUNC6(&ar->rx_work);
	FUNC6(&ar->rx_pool);
	FUNC6(&ar->tx_cmd);
}