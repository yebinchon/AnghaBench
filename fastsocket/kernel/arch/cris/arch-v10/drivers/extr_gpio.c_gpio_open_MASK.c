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
struct gpio_private {int minor; struct gpio_private* next; int /*<<< orphan*/  alarm_wq; scalar_t__ data_mask; scalar_t__ clk_mask; scalar_t__ lowalarm; scalar_t__ highalarm; scalar_t__ changeable_bits; scalar_t__ changeable_dir; int /*<<< orphan*/ * dir_shadow; int /*<<< orphan*/ * dir; int /*<<< orphan*/ * shadow; int /*<<< orphan*/ * port; } ;
struct file {struct gpio_private* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIO_MINOR_LAST ; 
 scalar_t__ FUNC0 (struct gpio_private*) ; 
 struct gpio_private* alarmlist ; 
 scalar_t__* changeable_bits ; 
 scalar_t__* changeable_dir ; 
 int /*<<< orphan*/ ** dir ; 
 int /*<<< orphan*/ ** dir_shadow ; 
 int /*<<< orphan*/  gpio_lock ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct gpio_private* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ ** ports ; 
 int /*<<< orphan*/ ** shads ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int
FUNC8(struct inode *inode, struct file *filp)
{
	struct gpio_private *priv;
	int p = FUNC1(inode);
	unsigned long flags;

	if (p > GPIO_MINOR_LAST)
		return -EINVAL;

	priv = FUNC3(sizeof(struct gpio_private), GFP_KERNEL);

	if (!priv)
		return -ENOMEM;

	FUNC4();
	priv->minor = p;

	/* initialize the io/alarm struct */

	if (FUNC0(priv)) { /* A and B */
		priv->port = ports[p];
		priv->shadow = shads[p];
		priv->dir = dir[p];
		priv->dir_shadow = dir_shadow[p];
		priv->changeable_dir = changeable_dir[p];
		priv->changeable_bits = changeable_bits[p];
	} else {
		priv->port = NULL;
		priv->shadow = NULL;
		priv->dir = NULL;
		priv->dir_shadow = NULL;
		priv->changeable_dir = 0;
		priv->changeable_bits = 0;
	}

	priv->highalarm = 0;
	priv->lowalarm = 0;
	priv->clk_mask = 0;
	priv->data_mask = 0;
	FUNC2(&priv->alarm_wq);

	filp->private_data = priv;

	/* link it into our alarmlist */
	FUNC5(&gpio_lock, flags);
	priv->next = alarmlist;
	alarmlist = priv;
	FUNC6(&gpio_lock, flags);

	FUNC7();
	return 0;
}