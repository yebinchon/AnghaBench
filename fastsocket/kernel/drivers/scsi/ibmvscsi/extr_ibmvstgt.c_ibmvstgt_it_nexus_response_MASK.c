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
typedef  int /*<<< orphan*/  u64 ;
struct vio_port {int /*<<< orphan*/ * rport; } ;
struct srp_target {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct Scsi_Host*,int) ; 
 struct srp_target* FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vio_port* FUNC3 (struct srp_target*) ; 

__attribute__((used)) static int FUNC4(struct Scsi_Host *shost, u64 itn_id,
				      int result)
{
	struct srp_target *target = FUNC1(shost);
	struct vio_port *vport = FUNC3(target);

	if (result) {
		FUNC0("%p %d\n", shost, result);
		FUNC2(vport->rport);
		vport->rport = NULL;
	}
	return 0;
}