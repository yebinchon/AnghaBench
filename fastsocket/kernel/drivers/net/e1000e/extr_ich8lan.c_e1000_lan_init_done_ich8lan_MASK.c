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
typedef  scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ E1000_ICH8_LAN_INIT_TIMEOUT ; 
 scalar_t__ E1000_STATUS_LAN_INIT_DONE ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct e1000_hw *hw)
{
	u32 data, loop = E1000_ICH8_LAN_INIT_TIMEOUT;

	/* Wait for basic configuration completes before proceeding */
	do {
		data = FUNC1(STATUS);
		data &= E1000_STATUS_LAN_INIT_DONE;
		FUNC3(100, 200);
	} while ((!data) && --loop);

	/* If basic configuration is incomplete before the above loop
	 * count reaches 0, loading the configuration from NVM will
	 * leave the PHY in a bad state possibly resulting in no link.
	 */
	if (loop == 0)
		FUNC0("LAN_INIT_DONE not set, increase timeout\n");

	/* Clear the Init Done bit for the next init event */
	data = FUNC1(STATUS);
	data &= ~E1000_STATUS_LAN_INIT_DONE;
	FUNC2(STATUS, data);
}