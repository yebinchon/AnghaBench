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
struct storvsc_device {struct Scsi_Host* host; } ;
struct hv_device {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 struct storvsc_device* FUNC0 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct hv_device*) ; 

__attribute__((used)) static int FUNC4(struct hv_device *dev)
{
	struct storvsc_device *stor_device = FUNC0(dev);
	struct Scsi_Host *host = stor_device->host;

	FUNC2(host);
	FUNC3(dev);
	FUNC1(host);

	return 0;
}