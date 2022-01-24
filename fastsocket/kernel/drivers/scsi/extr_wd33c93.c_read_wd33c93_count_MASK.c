#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* SCMD; int /*<<< orphan*/ * SASR; } ;
typedef  TYPE_1__ wd33c93_regs ;

/* Variables and functions */
 int /*<<< orphan*/  WD_TRANSFER_COUNT_MSB ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static unsigned long
FUNC1(const wd33c93_regs regs)
{
	unsigned long value;

	*regs.SASR = WD_TRANSFER_COUNT_MSB;
	FUNC0();
	value = *regs.SCMD << 16;
	value |= *regs.SCMD << 8;
	value |= *regs.SCMD;
	FUNC0();
	return value;
}