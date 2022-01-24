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
struct TYPE_2__ {int /*<<< orphan*/ * pbc; } ;
struct ar9170 {int registered; int /*<<< orphan*/  hw; int /*<<< orphan*/  restart_work; TYPE_1__ wps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct ar9170 *ar)
{
	if (!ar->registered)
		return;

	ar->registered = false;

#ifdef CONFIG_CARL9170_LEDS
	carl9170_led_unregister(ar);
#endif /* CONFIG_CARL9170_LEDS */

#ifdef CONFIG_CARL9170_DEBUGFS
	carl9170_debugfs_unregister(ar);
#endif /* CONFIG_CARL9170_DEBUGFS */

#ifdef CONFIG_CARL9170_WPC
	if (ar->wps.pbc) {
		input_unregister_device(ar->wps.pbc);
		ar->wps.pbc = NULL;
	}
#endif /* CONFIG_CARL9170_WPC */

#ifdef CONFIG_CARL9170_HWRNG
	carl9170_unregister_hwrng(ar);
#endif /* CONFIG_CARL9170_HWRNG */

	FUNC1(ar);
	FUNC0(&ar->restart_work);

	FUNC5(ar->hw);
}