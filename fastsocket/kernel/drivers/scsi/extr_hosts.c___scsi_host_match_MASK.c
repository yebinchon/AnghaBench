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
struct device {int dummy; } ;
struct Scsi_Host {unsigned short host_no; } ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (struct device*) ; 

__attribute__((used)) static int FUNC1(struct device *dev, void *data)
{
	struct Scsi_Host *p;
	unsigned short *hostnum = (unsigned short *)data;

	p = FUNC0(dev);
	return p->host_no == *hostnum;
}