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
struct gfar_private {int device_flags; unsigned short rx_stash_size; unsigned short rx_stash_index; int /*<<< orphan*/  rxlock; TYPE_1__* regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  attreli; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  ATTRELI_EI_MASK ; 
 int FSL_GIANFAR_DEV_HAS_BUF_STASHING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct gfar_private* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				       struct device_attribute *attr,
				       const char *buf, size_t count)
{
	struct gfar_private *priv = FUNC3(FUNC7(dev));
	unsigned short index = FUNC4(buf, NULL, 0);
	u32 temp;
	unsigned long flags;

	if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_BUF_STASHING))
		return count;

	FUNC5(&priv->rxlock, flags);
	if (index > priv->rx_stash_size)
		goto out;

	if (index == priv->rx_stash_index)
		goto out;

	priv->rx_stash_index = index;

	temp = FUNC1(&priv->regs->attreli);
	temp &= ~ATTRELI_EI_MASK;
	temp |= FUNC0(index);
	FUNC2(&priv->regs->attreli, flags);

out:
	FUNC6(&priv->rxlock, flags);

	return count;
}