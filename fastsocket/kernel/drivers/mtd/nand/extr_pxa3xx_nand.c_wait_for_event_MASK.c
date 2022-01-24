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
typedef  int uint32_t ;
struct pxa3xx_nand_info {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  NDSR ; 
 int NDSR_MASK ; 
 int WAIT_EVENT_TIMEOUT ; 
 int FUNC0 (struct pxa3xx_nand_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa3xx_nand_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct pxa3xx_nand_info *info, uint32_t event)
{
	int timeout = WAIT_EVENT_TIMEOUT;
	uint32_t ndsr;

	while (timeout--) {
		ndsr = FUNC0(info, NDSR) & NDSR_MASK;
		if (ndsr & event) {
			FUNC1(info, NDSR, ndsr);
			return 0;
		}
		FUNC2(10);
	}

	return -ETIMEDOUT;
}