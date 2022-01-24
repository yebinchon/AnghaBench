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
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*,int,int) ; 

void FUNC2(struct cx23885_dev *dev, u32 mask)
{
	u32 val;

	/* Clear the gpio value */
	FUNC0(dev, 0x900C, &val);
	val &= ~(mask & 0x0000ffff);
	FUNC1(dev, 0x900C, val);
}