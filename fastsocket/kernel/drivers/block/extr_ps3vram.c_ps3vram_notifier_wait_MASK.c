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
typedef  int /*<<< orphan*/  u32 ;
struct ps3vram_priv {int /*<<< orphan*/  reports; } ;
struct ps3_system_bus_device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  NOTIFIER ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ps3vram_priv* FUNC2 (struct ps3_system_bus_device*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct ps3_system_bus_device *dev,
				 unsigned int timeout_ms)
{
	struct ps3vram_priv *priv = FUNC2(dev);
	u32 *notify = FUNC3(priv->reports, NOTIFIER);
	unsigned long timeout = jiffies + FUNC0(timeout_ms);

	do {
		if (!notify[3])
			return 0;
		FUNC1(1);
	} while (FUNC4(jiffies, timeout));

	return -ETIMEDOUT;
}