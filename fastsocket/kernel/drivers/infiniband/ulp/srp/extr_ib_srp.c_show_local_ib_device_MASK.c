#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct srp_target_port {TYPE_3__* srp_host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_6__ {TYPE_2__* srp_dev; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct srp_target_port* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				    struct device_attribute *attr, char *buf)
{
	struct srp_target_port *target = FUNC1(FUNC0(dev));

	return FUNC2(buf, "%s\n", target->srp_host->srp_dev->dev->name);
}