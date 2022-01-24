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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC_IND_DATA ; 
 int /*<<< orphan*/  MC_IND_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

uint32_t FUNC2(struct radeon_device *rdev, uint32_t reg)
{
	uint32_t r;

	FUNC1(MC_IND_INDEX, 0x7f0000 | (reg & 0xffff));
	r = FUNC0(MC_IND_DATA);
	FUNC1(MC_IND_INDEX, 0);
	return r;
}