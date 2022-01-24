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
struct IN2000_hostdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_WD_ADDR ; 
 int /*<<< orphan*/  IO_WD_DATA ; 
 unsigned long WD_TRANSFER_COUNT_MSB ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct IN2000_hostdata *hostdata, unsigned long value)
{
	FUNC0(WD_TRANSFER_COUNT_MSB, IO_WD_ADDR);
	FUNC0((value >> 16), IO_WD_DATA);
	FUNC0((value >> 8), IO_WD_DATA);
	FUNC0(value, IO_WD_DATA);
}