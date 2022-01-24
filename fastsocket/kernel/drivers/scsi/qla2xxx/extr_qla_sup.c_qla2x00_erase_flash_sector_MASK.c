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
 int FUNC0 (struct qla_hw_data*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct qla_hw_data *ha, uint32_t addr,
    uint32_t sec_mask, uint8_t man_id, uint8_t flash_id)
{
	/* Individual Sector Erase Command Sequence */
	FUNC1(ha, 0x5555, 0xaa);
	FUNC1(ha, 0x2aaa, 0x55);
	FUNC1(ha, 0x5555, 0x80);
	FUNC1(ha, 0x5555, 0xaa);
	FUNC1(ha, 0x2aaa, 0x55);
	if (man_id == 0x1f && flash_id == 0x13)
		FUNC1(ha, addr & sec_mask, 0x10);
	else
		FUNC1(ha, addr & sec_mask, 0x30);

	FUNC2(150);

	/* Wait for erase to complete. */
	return FUNC0(ha, addr, 0x80, man_id, flash_id);
}