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
typedef  int /*<<< orphan*/  u32 ;
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cx23885_dev *dev, u32 line, u8 lvl)
{
	FUNC1(dev, line, 1);
	if (lvl == 1)
		FUNC2(dev, line);
	else
		FUNC0(dev, line);
}