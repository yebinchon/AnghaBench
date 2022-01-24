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
typedef  scalar_t__ wwn_t ;
typedef  int u32 ;
struct list_head {int dummy; } ;
struct bfa_fcs_s {int dummy; } ;
struct bfa_fcs_rport_s {int pid; scalar_t__ pwwn; } ;
struct bfa_fcs_lport_s {struct list_head rport_q; struct bfa_fcs_s* fcs; } ;
typedef  scalar_t__ bfa_boolean_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct list_head* FUNC1 (struct list_head*) ; 
 struct list_head* FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_s*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,int) ; 

wwn_t
FUNC5(struct bfa_fcs_lport_s *port, wwn_t wwn, int index,
		int nrports, bfa_boolean_t bwwn)
{
	struct list_head	*qh, *qe;
	struct bfa_fcs_rport_s *rport = NULL;
	int	i;
	struct bfa_fcs_s	*fcs;

	if (port == NULL || nrports == 0)
		return (wwn_t) 0;

	fcs = port->fcs;
	FUNC3(fcs, (u32) nrports);

	i = 0;
	qh = &port->rport_q;
	qe = FUNC1(qh);

	while ((qe != qh) && (i < nrports)) {
		rport = (struct bfa_fcs_rport_s *) qe;
		if (FUNC0(rport->pid) > 0xFFF000) {
			qe = FUNC2(qe);
			FUNC3(fcs, (u32) rport->pwwn);
			FUNC3(fcs, rport->pid);
			FUNC3(fcs, i);
			continue;
		}

		if (bwwn) {
			if (!FUNC4(&wwn, &rport->pwwn, 8))
				break;
		} else {
			if (i == index)
				break;
		}

		i++;
		qe = FUNC2(qe);
	}

	FUNC3(fcs, i);
	if (rport)
		return rport->pwwn;
	else
		return (wwn_t) 0;
}