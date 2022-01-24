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
struct vio_port {int dummy; } ;
struct vio_dev {int /*<<< orphan*/  dev; } ;
struct srp_target {struct vio_port* ldata; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct srp_target*) ; 
 struct srp_target* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vio_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (struct srp_target*) ; 

__attribute__((used)) static int FUNC8(struct vio_dev *dev)
{
	struct srp_target *target = FUNC1(&dev->dev);
	struct Scsi_Host *shost = target->shost;
	struct vio_port *vport = target->ldata;

	FUNC0(target);
	FUNC6(shost);
	FUNC4(shost);
	FUNC5(shost);
	FUNC7(target);
	FUNC2(vport);
	FUNC3(shost);
	return 0;
}