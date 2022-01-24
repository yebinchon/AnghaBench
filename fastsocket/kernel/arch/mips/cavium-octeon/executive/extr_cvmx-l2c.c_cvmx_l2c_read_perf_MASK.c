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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_L2C_PFC0 ; 
 int /*<<< orphan*/  CVMX_L2C_PFC1 ; 
 int /*<<< orphan*/  CVMX_L2C_PFC2 ; 
 int /*<<< orphan*/  CVMX_L2C_PFC3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

uint64_t FUNC1(uint32_t counter)
{
	switch (counter) {
	case 0:
		return FUNC0(CVMX_L2C_PFC0);
	case 1:
		return FUNC0(CVMX_L2C_PFC1);
	case 2:
		return FUNC0(CVMX_L2C_PFC2);
	case 3:
	default:
		return FUNC0(CVMX_L2C_PFC3);
	}
}