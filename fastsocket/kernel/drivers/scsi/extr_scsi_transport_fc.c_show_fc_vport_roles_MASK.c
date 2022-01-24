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
struct fc_vport {scalar_t__ roles; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FC_PORT_ROLE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 struct fc_vport* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3 (struct device *dev, struct device_attribute *attr,
		     char *buf)
{
	struct fc_vport *vport = FUNC2(dev);

	if (vport->roles == FC_PORT_ROLE_UNKNOWN)
		return FUNC1(buf, 20, "unknown\n");
	return FUNC0(vport->roles, buf);
}