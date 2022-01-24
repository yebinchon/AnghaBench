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
typedef  int u8 ;
struct enc28j60_net {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 unsigned long jiffies ; 
 unsigned long msec20_to_jiffies ; 
 scalar_t__ FUNC2 (struct enc28j60_net*) ; 
 int FUNC3 (struct enc28j60_net*,int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct enc28j60_net *priv, u8 reg, u8 mask, u8 val)
{
	unsigned long timeout = jiffies + msec20_to_jiffies;

	/* 20 msec timeout read */
	while ((FUNC3(priv, reg) & mask) != val) {
		if (FUNC4(jiffies, timeout)) {
			if (FUNC2(priv))
				FUNC1(&priv->spi->dev,
					"reg %02x ready timeout!\n", reg);
			return -ETIMEDOUT;
		}
		FUNC0();
	}
	return 0;
}