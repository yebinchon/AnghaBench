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

/* Variables and functions */
 int /*<<< orphan*/  AT91_EMAC_SR ; 
 int AT91_EMAC_SR_IDLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(void) {
	unsigned long timeout = jiffies + 2;

	while (!(FUNC0(AT91_EMAC_SR) & AT91_EMAC_SR_IDLE)) {
		if (FUNC3(jiffies, timeout)) {
			FUNC2("at91_ether: MIO timeout\n");
			break;
		}
		FUNC1();
	}
}