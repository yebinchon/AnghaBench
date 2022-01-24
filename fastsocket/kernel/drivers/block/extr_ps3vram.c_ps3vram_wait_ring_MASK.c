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
struct ps3vram_priv {scalar_t__* ctrl; } ;
struct ps3_system_bus_device {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 size_t CTRL_GET ; 
 size_t CTRL_PUT ; 
 size_t CTRL_TOP ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ps3vram_priv* FUNC3 (struct ps3_system_bus_device*) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct ps3_system_bus_device *dev,
			     unsigned int timeout_ms)
{
	struct ps3vram_priv *priv = FUNC3(dev);
	unsigned long timeout = jiffies + FUNC1(timeout_ms);

	do {
		if (priv->ctrl[CTRL_PUT] == priv->ctrl[CTRL_GET])
			return 0;
		FUNC2(1);
	} while (FUNC4(jiffies, timeout));

	FUNC0(&dev->core, "FIFO timeout (%08x/%08x/%08x)\n",
		 priv->ctrl[CTRL_PUT], priv->ctrl[CTRL_GET],
		 priv->ctrl[CTRL_TOP]);

	return -ETIMEDOUT;
}