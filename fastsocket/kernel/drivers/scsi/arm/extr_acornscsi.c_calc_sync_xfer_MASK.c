#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int reg_value; } ;

/* Variables and functions */
 unsigned int SDTR_SIZE ; 
 size_t FUNC0 (unsigned int) ; 
 TYPE_1__* sync_xfer_table ; 

__attribute__((used)) static
unsigned char FUNC1(unsigned int period, unsigned int offset)
{
    return sync_xfer_table[FUNC0(period)].reg_value |
		((offset < SDTR_SIZE) ? offset : SDTR_SIZE);
}