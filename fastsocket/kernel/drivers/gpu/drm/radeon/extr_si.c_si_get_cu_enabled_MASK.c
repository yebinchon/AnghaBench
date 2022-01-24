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
typedef  int u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_GC_SHADER_ARRAY_CONFIG ; 
 int /*<<< orphan*/  GC_USER_SHADER_ARRAY_CONFIG ; 
 int INACTIVE_CUS_MASK ; 
 int INACTIVE_CUS_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static u32 FUNC2(struct radeon_device *rdev, u32 cu_per_sh)
{
	u32 data, mask;

	data = FUNC0(CC_GC_SHADER_ARRAY_CONFIG);
	if (data & 1)
		data &= INACTIVE_CUS_MASK;
	else
		data = 0;
	data |= FUNC0(GC_USER_SHADER_ARRAY_CONFIG);

	data >>= INACTIVE_CUS_SHIFT;

	mask = FUNC1(cu_per_sh);

	return ~data & mask;
}