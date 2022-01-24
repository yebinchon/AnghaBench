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
struct expansion_card {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 struct expansion_card* FUNC0 (struct device*) ; 
 struct Scsi_Host* FUNC1 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*,int) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr, const char *buf, size_t len)
{
	struct expansion_card *ec = FUNC0(dev);
	struct Scsi_Host *host = FUNC1(ec);

	if (len > 1)
		FUNC2(host, buf[0] != '0');

	return len;
}