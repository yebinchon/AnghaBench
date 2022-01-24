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
typedef  void* wwn_t ;
typedef  int /*<<< orphan*/  u16 ;
struct bfa_lps_s {int /*<<< orphan*/  auth_en; int /*<<< orphan*/  fdisc; void* nwwn; void* pwwn; int /*<<< orphan*/  pdusz; scalar_t__ alpa; void* uarg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  BFA_LPS_SM_LOGIN ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_lps_s*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct bfa_lps_s *lps, void *uarg, u16 pdusz, wwn_t pwwn,
	wwn_t nwwn)
{
	lps->uarg	= uarg;
	lps->alpa	= 0;
	lps->pdusz	= pdusz;
	lps->pwwn	= pwwn;
	lps->nwwn	= nwwn;
	lps->fdisc	= BFA_TRUE;
	lps->auth_en	= BFA_FALSE;
	FUNC0(lps, BFA_LPS_SM_LOGIN);
}