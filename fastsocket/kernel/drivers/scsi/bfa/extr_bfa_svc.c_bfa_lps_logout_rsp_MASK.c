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
struct bfi_lps_logout_rsp_s {scalar_t__ bfa_tag; } ;
struct bfa_s {int dummy; } ;
struct bfa_lps_s {int dummy; } ;
struct bfa_lps_mod_s {scalar_t__ num_lps; } ;

/* Variables and functions */
 struct bfa_lps_s* FUNC0 (struct bfa_lps_mod_s*,scalar_t__) ; 
 struct bfa_lps_mod_s* FUNC1 (struct bfa_s*) ; 
 int /*<<< orphan*/  BFA_LPS_SM_FWRSP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_lps_s*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_s *bfa, struct bfi_lps_logout_rsp_s *rsp)
{
	struct bfa_lps_mod_s	*mod = FUNC1(bfa);
	struct bfa_lps_s	*lps;

	FUNC2(rsp->bfa_tag >= mod->num_lps);
	lps = FUNC0(mod, rsp->bfa_tag);

	FUNC3(lps, BFA_LPS_SM_FWRSP);
}