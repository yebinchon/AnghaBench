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
struct ssp_device {scalar_t__ mmio_base; } ;
struct ssp_dev {struct ssp_device* ssp; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ SSDR ; 
 scalar_t__ SSSR ; 
 int SSSR_BSY ; 
 int SSSR_RNE ; 
 int TIMEOUT ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct ssp_dev *dev)
{
	struct ssp_device *ssp = dev->ssp;
	int timeout = TIMEOUT * 2;

	/* ensure TX FIFO is empty instead of not full */
	if (FUNC1()) {
		while (FUNC0(ssp->mmio_base + SSSR) & 0xf00) {
			if (!--timeout)
				return -ETIMEDOUT;
			FUNC2();
		}
		timeout = TIMEOUT * 2;
	}

	do {
		while (FUNC0(ssp->mmio_base + SSSR) & SSSR_RNE) {
		        if (!--timeout)
		        	return -ETIMEDOUT;
			(void)FUNC0(ssp->mmio_base + SSDR);
		}
	        if (!--timeout)
	        	return -ETIMEDOUT;
	} while (FUNC0(ssp->mmio_base + SSSR) & SSSR_BSY);

	return 0;
}