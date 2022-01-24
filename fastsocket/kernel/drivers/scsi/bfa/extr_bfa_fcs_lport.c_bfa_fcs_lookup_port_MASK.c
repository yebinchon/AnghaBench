#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wwn_t ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_5__ {int /*<<< orphan*/  pwwn; } ;
struct bfa_fcs_lport_s {TYPE_1__ port_cfg; } ;
struct bfa_fcs_vport_s {struct bfa_fcs_lport_s lport; } ;
struct bfa_fcs_s {int dummy; } ;
struct TYPE_6__ {struct bfa_fcs_lport_s bport; } ;
typedef  TYPE_2__ bfa_fcs_vf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bfa_fcs_vport_s* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct bfa_fcs_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_s*,int /*<<< orphan*/ ) ; 

struct bfa_fcs_lport_s *
FUNC4(struct bfa_fcs_s *fcs, u16 vf_id, wwn_t lpwwn)
{
	struct bfa_fcs_vport_s *vport;
	bfa_fcs_vf_t   *vf;

	FUNC0(fcs == NULL);

	vf = FUNC2(fcs, vf_id);
	if (vf == NULL) {
		FUNC3(fcs, vf_id);
		return NULL;
	}

	if (!lpwwn || (vf->bport.port_cfg.pwwn == lpwwn))
		return &vf->bport;

	vport = FUNC1(vf, lpwwn);
	if (vport)
		return &vport->lport;

	return NULL;
}