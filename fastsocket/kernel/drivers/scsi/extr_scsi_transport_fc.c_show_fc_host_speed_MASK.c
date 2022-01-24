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
struct fc_internal {TYPE_1__* f; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_host_speed ) (struct Scsi_Host*) ;} ;

/* Variables and functions */
 scalar_t__ FC_PORTSPEED_UNKNOWN ; 
 scalar_t__ FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 struct fc_internal* FUNC4 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC6 (struct device *dev,
		    struct device_attribute *attr, char *buf)
{
	struct Scsi_Host *shost = FUNC5(dev);
	struct fc_internal *i = FUNC4(shost->transportt);

	if (i->f->get_host_speed)
		i->f->get_host_speed(shost);

	if (FUNC0(shost) == FC_PORTSPEED_UNKNOWN)
		return FUNC2(buf, 20, "unknown\n");

	return FUNC1(FUNC0(shost), buf);
}