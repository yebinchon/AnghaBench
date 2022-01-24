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
struct iscsi_host {int /*<<< orphan*/  initiatorname; int /*<<< orphan*/  hwaddress; int /*<<< orphan*/  netdev; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 
 struct iscsi_host* FUNC2 (struct Scsi_Host*) ; 

void FUNC3(struct Scsi_Host *shost)
{
	struct iscsi_host *ihost = FUNC2(shost);

	FUNC0(ihost->netdev);
	FUNC0(ihost->hwaddress);
	FUNC0(ihost->initiatorname);
	FUNC1(shost);
}