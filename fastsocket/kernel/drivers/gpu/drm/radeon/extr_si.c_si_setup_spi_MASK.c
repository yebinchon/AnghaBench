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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_STATIC_THREAD_MGMT_3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int,int) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev,
			 u32 se_num, u32 sh_per_se,
			 u32 cu_per_sh)
{
	int i, j, k;
	u32 data, mask, active_cu;

	for (i = 0; i < se_num; i++) {
		for (j = 0; j < sh_per_se; j++) {
			FUNC3(rdev, i, j);
			data = FUNC0(SPI_STATIC_THREAD_MGMT_3);
			active_cu = FUNC2(rdev, cu_per_sh);

			mask = 1;
			for (k = 0; k < 16; k++) {
				mask <<= k;
				if (active_cu & mask) {
					data &= ~mask;
					FUNC1(SPI_STATIC_THREAD_MGMT_3, data);
					break;
				}
			}
		}
	}
	FUNC3(rdev, 0xffffffff, 0xffffffff);
}