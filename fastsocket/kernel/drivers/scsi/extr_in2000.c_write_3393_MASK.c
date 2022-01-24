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
typedef  int /*<<< orphan*/  uchar ;
struct IN2000_hostdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_WD_ADDR ; 
 int /*<<< orphan*/  IO_WD_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct IN2000_hostdata *hostdata, uchar reg_num, uchar value)
{
	FUNC0(reg_num, IO_WD_ADDR);
	FUNC0(value, IO_WD_DATA);
}