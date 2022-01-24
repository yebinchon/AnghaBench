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
 int HCRE ; 
 int HZ ; 
 int FUNC0 (unsigned int) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,unsigned long) ; 

__attribute__((used)) static inline bool FUNC4(unsigned int base_addr, unsigned char byte)
{
	unsigned long timeout;
	FUNC1(byte, base_addr);
	for (timeout = jiffies + 5*HZ/100; FUNC3(jiffies, timeout);) {
		if (FUNC0(base_addr) & HCRE)
			return false;
	}
	FUNC2("3c505: send_pcb_slow timed out\n");
	return true;
}