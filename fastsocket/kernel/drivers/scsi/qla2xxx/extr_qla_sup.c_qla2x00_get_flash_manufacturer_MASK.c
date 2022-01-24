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
typedef  int /*<<< orphan*/  uint8_t ;
struct qla_hw_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct qla_hw_data *ha, uint8_t *man_id,
    uint8_t *flash_id)
{
	FUNC1(ha, 0x5555, 0xaa);
	FUNC1(ha, 0x2aaa, 0x55);
	FUNC1(ha, 0x5555, 0x90);
	*man_id = FUNC0(ha, 0x0000);
	*flash_id = FUNC0(ha, 0x0001);
	FUNC1(ha, 0x5555, 0xaa);
	FUNC1(ha, 0x2aaa, 0x55);
	FUNC1(ha, 0x5555, 0xf0);
}