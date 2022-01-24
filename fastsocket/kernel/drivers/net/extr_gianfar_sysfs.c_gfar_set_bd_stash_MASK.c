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
typedef  int /*<<< orphan*/  u32 ;
struct gfar_private {int device_flags; int bd_stash_en; int /*<<< orphan*/  rxlock; TYPE_1__* regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_BDSTASH ; 
 int FSL_GIANFAR_DEV_HAS_BD_STASHING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct gfar_private* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t count)
{
	struct gfar_private *priv = FUNC2(FUNC6(dev));
	int new_setting = 0;
	u32 temp;
	unsigned long flags;

	if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_BD_STASHING))
		return count;

	/* Find out the new setting */
	if (!FUNC5("on", buf, count - 1) || !FUNC5("1", buf, count - 1))
		new_setting = 1;
	else if (!FUNC5("off", buf, count - 1)
		 || !FUNC5("0", buf, count - 1))
		new_setting = 0;
	else
		return count;

	FUNC3(&priv->rxlock, flags);

	/* Set the new stashing value */
	priv->bd_stash_en = new_setting;

	temp = FUNC0(&priv->regs->attr);

	if (new_setting)
		temp |= ATTR_BDSTASH;
	else
		temp &= ~(ATTR_BDSTASH);

	FUNC1(&priv->regs->attr, temp);

	FUNC4(&priv->rxlock, flags);

	return count;
}