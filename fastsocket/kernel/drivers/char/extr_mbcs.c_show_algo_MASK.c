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
typedef  int /*<<< orphan*/  uint64_t ;
struct mbcs_soft {scalar_t__ debug_addr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cx_dev {struct mbcs_soft* soft; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int) ; 
 struct cx_dev* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct cx_dev *cx_dev = FUNC2(dev);
	struct mbcs_soft *soft = cx_dev->soft;
	uint64_t debug0;

	/*
	 * By convention, the first debug register contains the
	 * algorithm number and revision.
	 */
	debug0 = *(uint64_t *) soft->debug_addr;

	return FUNC1(buf, "0x%x 0x%x\n",
		       FUNC3(debug0), FUNC0(debug0));
}