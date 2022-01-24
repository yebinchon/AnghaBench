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
struct gpio_private {unsigned long* port; scalar_t__ minor; unsigned long highalarm; unsigned long lowalarm; struct gpio_private* next; int /*<<< orphan*/  alarm_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GPIO_MINOR_G ; 
 unsigned long* R_PORT_G_DATA ; 
 scalar_t__ FUNC1 (struct gpio_private*) ; 
 struct gpio_private* alarmlist ; 
 int /*<<< orphan*/  gpio_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(void)
{
	struct gpio_private *priv;
	unsigned long data = 0;
        int ret = 0;
	unsigned long flags;

	FUNC3(&gpio_lock, flags);
	priv = alarmlist;
	while (priv) {
		if (FUNC1(priv))
			data = *priv->port;
		else if (priv->minor == GPIO_MINOR_G)
			data = *R_PORT_G_DATA;

		if ((data & priv->highalarm) ||
		    (~data & priv->lowalarm)) {
			FUNC0(FUNC2("etrax_gpio_wake_up_check %i\n",priv->minor));
			FUNC5(&priv->alarm_wq);
                        ret = 1;
		}
		priv = priv->next;
	}
	FUNC4(&gpio_lock, flags);
        return ret;
}