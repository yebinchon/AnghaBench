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
struct fc_rport {scalar_t__ supported_classes; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FC_COS_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 struct fc_rport* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC3 (struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	struct fc_rport *rport = FUNC2(dev);
	if (rport->supported_classes == FC_COS_UNSPECIFIED)
		return FUNC1(buf, 20, "unspecified\n");
	return FUNC0(rport->supported_classes, buf);
}