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
struct gfar_private {int device_flags; unsigned int rx_buffer_size; unsigned int rx_stash_size; int /*<<< orphan*/  rxlock; TYPE_1__* regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  attr; int /*<<< orphan*/  attreli; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  ATTRELI_EL_MASK ; 
 int /*<<< orphan*/  ATTR_BUFSTASH ; 
 int FSL_GIANFAR_DEV_HAS_BUF_STASHING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct gfar_private* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	struct gfar_private *priv = FUNC3(FUNC7(dev));
	unsigned int length = FUNC4(buf, NULL, 0);
	u32 temp;
	unsigned long flags;

	if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_BUF_STASHING))
		return count;

	FUNC5(&priv->rxlock, flags);
	if (length > priv->rx_buffer_size)
		goto out;

	if (length == priv->rx_stash_size)
		goto out;

	priv->rx_stash_size = length;

	temp = FUNC1(&priv->regs->attreli);
	temp &= ~ATTRELI_EL_MASK;
	temp |= FUNC0(length);
	FUNC2(&priv->regs->attreli, temp);

	/* Turn stashing on/off as appropriate */
	temp = FUNC1(&priv->regs->attr);

	if (length)
		temp |= ATTR_BUFSTASH;
	else
		temp &= ~(ATTR_BUFSTASH);

	FUNC2(&priv->regs->attr, temp);

out:
	FUNC6(&priv->rxlock, flags);

	return count;
}