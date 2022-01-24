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
typedef  int u8 ;
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  F300_CLK ; 
 int /*<<< orphan*/  F300_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct cx23885_dev *dev, u8 dta)
{
	u8 i;

	for (i = 0; i < 8; i++) {
		FUNC0(dev, F300_CLK, 0);
		FUNC1(30);
		FUNC0(dev, F300_DATA, (dta & 0x80) >> 7);/* msb first */
		FUNC1(30);
		dta <<= 1;
		FUNC0(dev, F300_CLK, 1);
		FUNC1(30);
	}
}