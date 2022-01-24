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
typedef  unsigned int u32 ;
struct gfar_private {unsigned int fifo_starve_off; int /*<<< orphan*/  txlock; TYPE_1__* regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  fifo_tx_starve_shutoff; } ;

/* Variables and functions */
 unsigned int FIFO_TX_STARVE_OFF_MASK ; 
 unsigned int GFAR_MAX_FIFO_STARVE_OFF ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 struct gfar_private* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	struct gfar_private *priv = FUNC2(FUNC6(dev));
	unsigned int num = FUNC3(buf, NULL, 0);
	u32 temp;
	unsigned long flags;

	if (num > GFAR_MAX_FIFO_STARVE_OFF)
		return count;

	FUNC4(&priv->txlock, flags);

	priv->fifo_starve_off = num;

	temp = FUNC0(&priv->regs->fifo_tx_starve_shutoff);
	temp &= ~FIFO_TX_STARVE_OFF_MASK;
	temp |= num;
	FUNC1(&priv->regs->fifo_tx_starve_shutoff, temp);

	FUNC5(&priv->txlock, flags);

	return count;
}