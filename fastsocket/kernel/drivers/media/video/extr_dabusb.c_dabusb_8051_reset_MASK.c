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
typedef  int /*<<< orphan*/  pdabusb_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPUCS_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char) ; 

__attribute__((used)) static int FUNC2 (pdabusb_t s, unsigned char reset_bit)
{
	FUNC1("dabusb_8051_reset: %d",reset_bit);
	return FUNC0 (s, CPUCS_REG, &reset_bit, 1);
}