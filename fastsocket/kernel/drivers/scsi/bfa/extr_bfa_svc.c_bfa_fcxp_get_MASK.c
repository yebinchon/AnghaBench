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
struct bfa_fcxp_s {int /*<<< orphan*/  qe; } ;
struct bfa_fcxp_mod_s {int /*<<< orphan*/  fcxp_active_q; int /*<<< orphan*/  fcxp_rsp_free_q; int /*<<< orphan*/  fcxp_req_free_q; } ;
typedef  scalar_t__ bfa_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfa_fcxp_s**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct bfa_fcxp_s *
FUNC2(struct bfa_fcxp_mod_s *fm, bfa_boolean_t req)
{
	struct bfa_fcxp_s *fcxp;

	if (req)
		FUNC0(&fm->fcxp_req_free_q, &fcxp);
	else
		FUNC0(&fm->fcxp_rsp_free_q, &fcxp);

	if (fcxp)
		FUNC1(&fcxp->qe, &fm->fcxp_active_q);

	return fcxp;
}