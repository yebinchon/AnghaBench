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
struct talitos_private {scalar_t__ reg; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ TALITOS_MCR ; 
 int TALITOS_MCR_SWR ; 
 unsigned int TALITOS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct talitos_private* FUNC2 (struct device*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct talitos_private *priv = FUNC2(dev);
	unsigned int timeout = TALITOS_TIMEOUT;

	FUNC4(priv->reg + TALITOS_MCR, TALITOS_MCR_SWR);

	while ((FUNC3(priv->reg + TALITOS_MCR) & TALITOS_MCR_SWR)
	       && --timeout)
		FUNC0();

	if (timeout == 0) {
		FUNC1(dev, "failed to reset device\n");
		return -EIO;
	}

	return 0;
}