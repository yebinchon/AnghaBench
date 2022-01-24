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
struct ar9170 {int /*<<< orphan*/  ampdu_work; int /*<<< orphan*/  ping_work; int /*<<< orphan*/  ps_work; int /*<<< orphan*/  led_work; int /*<<< orphan*/  tx_janitor; int /*<<< orphan*/  stat_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ar9170 *ar)
{
	FUNC0(&ar->stat_work);
	FUNC0(&ar->tx_janitor);
#ifdef CONFIG_CARL9170_LEDS
	cancel_delayed_work_sync(&ar->led_work);
#endif /* CONFIG_CARL9170_LEDS */
	FUNC1(&ar->ps_work);
	FUNC1(&ar->ping_work);
	FUNC1(&ar->ampdu_work);
}