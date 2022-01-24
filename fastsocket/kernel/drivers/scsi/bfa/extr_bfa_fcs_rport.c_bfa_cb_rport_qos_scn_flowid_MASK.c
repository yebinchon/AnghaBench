#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bfa_rport_qos_attr_s {int dummy; } ;
struct TYPE_2__ {struct bfa_rport_qos_attr_s qos; } ;
struct bfa_rport_aen_data_s {TYPE_1__ priv; } ;
struct bfa_fcs_rport_s {int /*<<< orphan*/  pwwn; int /*<<< orphan*/  fcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_RPORT_AEN_QOS_FLOWID ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ,struct bfa_rport_aen_data_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(void *cbarg,
		struct bfa_rport_qos_attr_s old_qos_attr,
		struct bfa_rport_qos_attr_s new_qos_attr)
{
	struct bfa_fcs_rport_s *rport = (struct bfa_fcs_rport_s *) cbarg;
	struct bfa_rport_aen_data_s aen_data;

	FUNC1(rport->fcs, rport->pwwn);
	aen_data.priv.qos = new_qos_attr;
	FUNC0(rport, BFA_RPORT_AEN_QOS_FLOWID, &aen_data);
}