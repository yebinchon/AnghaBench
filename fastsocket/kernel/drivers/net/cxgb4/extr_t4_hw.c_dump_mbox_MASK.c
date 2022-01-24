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
typedef  scalar_t__ u32 ;
struct adapter {int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ; 
 scalar_t__ FUNC1 (struct adapter*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct adapter *adap, int mbox, u32 data_reg)
{
	FUNC0(adap->pdev_dev,
		"mbox %d: %llx %llx %llx %llx %llx %llx %llx %llx\n", mbox,
		(unsigned long long)FUNC1(adap, data_reg),
		(unsigned long long)FUNC1(adap, data_reg + 8),
		(unsigned long long)FUNC1(adap, data_reg + 16),
		(unsigned long long)FUNC1(adap, data_reg + 24),
		(unsigned long long)FUNC1(adap, data_reg + 32),
		(unsigned long long)FUNC1(adap, data_reg + 40),
		(unsigned long long)FUNC1(adap, data_reg + 48),
		(unsigned long long)FUNC1(adap, data_reg + 56));
}