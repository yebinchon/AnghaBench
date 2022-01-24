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
typedef  int u8 ;
struct env {scalar_t__ regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 scalar_t__ REG_STAT ; 
 struct env* FUNC0 (struct device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 TYPE_1__* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	int index = FUNC3(attr)->index;
	struct env *p = FUNC0(dev);
	u8 val;

	val = FUNC1(p->regs + REG_STAT);
	return FUNC2(buf, "%d\n", (val & (1 << index)) ? 1 : 0);
}