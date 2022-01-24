#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_9__ {int /*<<< orphan*/  (* rport_login ) (TYPE_4__*) ;TYPE_4__* (* rport_create ) (struct fc_lport*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  rport_destroy; int /*<<< orphan*/  (* rport_logoff ) (TYPE_4__*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  disc_mutex; } ;
struct fc_lport {TYPE_4__* ptp_rdata; TYPE_3__ tt; TYPE_2__ disc; } ;
struct TYPE_7__ {void* node_name; void* port_name; } ;
struct TYPE_10__ {TYPE_1__ ids; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 TYPE_4__* FUNC6 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC8(struct fc_lport *lport,
			       u32 remote_fid, u64 remote_wwpn,
			       u64 remote_wwnn)
{
	FUNC3(&lport->disc.disc_mutex);
	if (lport->ptp_rdata) {
		lport->tt.rport_logoff(lport->ptp_rdata);
		FUNC2(&lport->ptp_rdata->kref, lport->tt.rport_destroy);
	}
	lport->ptp_rdata = lport->tt.rport_create(lport, remote_fid);
	FUNC1(&lport->ptp_rdata->kref);
	lport->ptp_rdata->ids.port_name = remote_wwpn;
	lport->ptp_rdata->ids.node_name = remote_wwnn;
	FUNC4(&lport->disc.disc_mutex);

	lport->tt.rport_login(lport->ptp_rdata);

	FUNC0(lport);
}