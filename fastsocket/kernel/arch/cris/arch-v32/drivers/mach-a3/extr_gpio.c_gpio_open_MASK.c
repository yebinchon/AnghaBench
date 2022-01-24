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
struct inode {int dummy; } ;
struct gpio_private {int minor; struct gpio_private* next; int /*<<< orphan*/  alarm_wq; scalar_t__ lowalarm; scalar_t__ highalarm; scalar_t__ data_mask; scalar_t__ clk_mask; } ;
struct file {struct gpio_private* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIO_MINOR_LAST ; 
 int GPIO_MINOR_LAST_PWM ; 
 int GPIO_MINOR_PWM0 ; 
 struct gpio_private* alarmlist ; 
 int /*<<< orphan*/  gpio_lock ; 
 int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gpio_private* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *filp)
{
	struct gpio_private *priv;
	int p = FUNC0(inode);

	if (p > GPIO_MINOR_LAST_PWM ||
	    (p > GPIO_MINOR_LAST && p < GPIO_MINOR_PWM0))
		return -EINVAL;

	priv = FUNC2(sizeof(struct gpio_private), GFP_KERNEL);

	if (!priv)
		return -ENOMEM;

	FUNC3();
	FUNC4(priv, 0, sizeof(*priv));

	priv->minor = p;
	filp->private_data = priv;

	/* initialize the io/alarm struct, not for PWM ports though  */
	if (p <= GPIO_MINOR_LAST) {

		priv->clk_mask = 0;
		priv->data_mask = 0;
		priv->highalarm = 0;
		priv->lowalarm = 0;

		FUNC1(&priv->alarm_wq);

		/* link it into our alarmlist */
		FUNC5(&gpio_lock);
		priv->next = alarmlist;
		alarmlist = priv;
		FUNC6(&gpio_lock);
	}

	FUNC7();
	return 0;
}