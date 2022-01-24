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
struct talitos_private {int features; scalar_t__ reg; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int TALITOS_CCCR_LO_CDIE ; 
 int TALITOS_CCCR_LO_CDWE ; 
 int TALITOS_CCCR_LO_EAE ; 
 int TALITOS_CCCR_LO_IWSE ; 
 int TALITOS_CCCR_RESET ; 
 int TALITOS_FTR_HW_AUTH_CHECK ; 
 unsigned int TALITOS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct talitos_private* FUNC4 (struct device*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC7(struct device *dev, int ch)
{
	struct talitos_private *priv = FUNC4(dev);
	unsigned int timeout = TALITOS_TIMEOUT;

	FUNC6(priv->reg + FUNC0(ch), TALITOS_CCCR_RESET);

	while ((FUNC5(priv->reg + FUNC0(ch)) & TALITOS_CCCR_RESET)
	       && --timeout)
		FUNC2();

	if (timeout == 0) {
		FUNC3(dev, "failed to reset channel %d\n", ch);
		return -EIO;
	}

	/* set 36-bit addressing, done writeback enable and done IRQ enable */
	FUNC6(priv->reg + FUNC1(ch), TALITOS_CCCR_LO_EAE |
		  TALITOS_CCCR_LO_CDWE | TALITOS_CCCR_LO_CDIE);

	/* and ICCR writeback, if available */
	if (priv->features & TALITOS_FTR_HW_AUTH_CHECK)
		FUNC6(priv->reg + FUNC1(ch),
		          TALITOS_CCCR_LO_IWSE);

	return 0;
}