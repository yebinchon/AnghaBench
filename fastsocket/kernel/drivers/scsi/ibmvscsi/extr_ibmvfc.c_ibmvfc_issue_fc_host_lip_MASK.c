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
struct ibmvfc_host {int /*<<< orphan*/  dev; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvfc_host*) ; 
 int FUNC2 (struct ibmvfc_host*) ; 
 struct ibmvfc_host* FUNC3 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC4(struct Scsi_Host *shost)
{
	struct ibmvfc_host *vhost = FUNC3(shost);

	FUNC0(vhost->dev, "Initiating host LIP. Resetting connection\n");
	FUNC1(vhost);
	return FUNC2(vhost);
}