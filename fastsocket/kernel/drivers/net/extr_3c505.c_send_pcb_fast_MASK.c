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
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static inline bool FUNC3(unsigned int base_addr, unsigned char byte)
{
	unsigned int timeout;
	FUNC1(byte, base_addr);
	for (timeout = 0; timeout < 40000; timeout++) {
		if (FUNC0(base_addr) & HCRE)
			return false;
	}
	FUNC2("3c505: send_pcb_fast timed out\n");
	return true;
}