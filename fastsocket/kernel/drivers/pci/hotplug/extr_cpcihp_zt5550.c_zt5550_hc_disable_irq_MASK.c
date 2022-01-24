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
typedef  int u8 ;

/* Variables and functions */
 int ENODEV ; 
 int ENUM_INT_MASK ; 
 int /*<<< orphan*/  csr_int_mask ; 
 int /*<<< orphan*/ * hc_dev ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void)
{
	u8 reg;

	if(hc_dev == NULL) {
		return -ENODEV;
	}

	reg = FUNC0(csr_int_mask);
	reg = reg | ENUM_INT_MASK;
	FUNC1(reg, csr_int_mask);
	return 0;
}