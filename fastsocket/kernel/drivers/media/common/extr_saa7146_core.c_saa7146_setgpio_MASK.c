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
struct saa7146_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GPIO_CTRL ; 
 int FUNC1 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct saa7146_dev *dev, int port, u32 data)
{
	u32 value = 0;

	FUNC0(port > 3);

	value = FUNC1(dev, GPIO_CTRL);
	value &= ~(0xff << (8*port));
	value |= (data << (8*port));
	FUNC2(dev, GPIO_CTRL, value);
}