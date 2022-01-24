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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct qla_hw_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int FUNC1 (struct qla_hw_data*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct qla_hw_data *ha, uint32_t addr,
    uint8_t data, uint8_t man_id, uint8_t flash_id)
{
	/* Write Program Command Sequence. */
	if (FUNC0(ha)) {
		FUNC2(ha, 0xaaa, 0xaa);
		FUNC2(ha, 0x555, 0x55);
		FUNC2(ha, 0xaaa, 0xa0);
		FUNC2(ha, addr, data);
	} else {
		if (man_id == 0xda && flash_id == 0xc1) {
			FUNC2(ha, addr, data);
			if (addr & 0x7e)
				return 0;
		} else {
			FUNC2(ha, 0x5555, 0xaa);
			FUNC2(ha, 0x2aaa, 0x55);
			FUNC2(ha, 0x5555, 0xa0);
			FUNC2(ha, addr, data);
		}
	}

	FUNC3(150);

	/* Wait for write to complete. */
	return FUNC1(ha, addr, data, man_id, flash_id);
}