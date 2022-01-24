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
struct fc_lport {int /*<<< orphan*/  lp_mutex; int /*<<< orphan*/  vports; int /*<<< orphan*/  list; struct fc_vport* vport; } ;
struct Scsi_Host {int /*<<< orphan*/  hostt; } ;

/* Variables and functions */
 struct fc_lport* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fc_lport* FUNC4 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC5 (struct fc_vport*) ; 

struct fc_lport *FUNC6(struct fc_vport *vport, int privsize)
{
	struct Scsi_Host *shost = FUNC5(vport);
	struct fc_lport *n_port = FUNC4(shost);
	struct fc_lport *vn_port;

	vn_port = FUNC0(shost->hostt, privsize);
	if (!vn_port)
		return vn_port;

	vn_port->vport = vport;
	vport->dd_data = vn_port;

	FUNC2(&n_port->lp_mutex);
	FUNC1(&vn_port->list, &n_port->vports);
	FUNC3(&n_port->lp_mutex);

	return vn_port;
}