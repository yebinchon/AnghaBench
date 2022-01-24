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
struct fc_vport {struct fc_lport* dd_data; } ;
struct fc_lport {int /*<<< orphan*/  lp_mutex; int /*<<< orphan*/  list; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  fcoe_config_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fc_lport* FUNC4 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC5 (struct fc_vport*) ; 

__attribute__((used)) static int FUNC6(struct fc_vport *vport)
{
	struct Scsi_Host *shost = FUNC5(vport);
	struct fc_lport *n_port = FUNC4(shost);
	struct fc_lport *vn_port = vport->dd_data;

	FUNC2(&n_port->lp_mutex);
	FUNC1(&vn_port->list);
	FUNC3(&n_port->lp_mutex);

	FUNC2(&fcoe_config_mutex);
	FUNC0(vn_port);
	FUNC3(&fcoe_config_mutex);

	return 0;
}