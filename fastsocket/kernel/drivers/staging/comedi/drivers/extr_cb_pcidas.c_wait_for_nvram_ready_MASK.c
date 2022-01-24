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
 scalar_t__ AMCC_OP_REG_MCSR_NVCMD ; 
 int MCSR_NV_BUSY ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(unsigned long s5933_base_addr)
{
	static const int timeout = 1000;
	unsigned int i;

	for (i = 0; i < timeout; i++) {
		if ((FUNC0(s5933_base_addr +
			 AMCC_OP_REG_MCSR_NVCMD) & MCSR_NV_BUSY)
		    == 0)
			return 0;
		FUNC1(1);
	}
	return -1;
}