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
struct transport_container {int dummy; } ;
struct fc_host_attrs {int /*<<< orphan*/  rqst_q; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct fc_host_attrs* FUNC2 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC3(struct transport_container *tc, struct device *dev,
			 struct device *cdev)
{
	struct Scsi_Host *shost = FUNC0(dev);
	struct fc_host_attrs *fc_host = FUNC2(shost);

	FUNC1(fc_host->rqst_q);
	return 0;
}