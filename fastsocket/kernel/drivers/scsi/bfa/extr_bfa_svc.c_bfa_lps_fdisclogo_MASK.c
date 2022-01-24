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
struct bfa_lps_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_LPS_SM_LOGOUT ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_lps_s*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct bfa_lps_s *lps)
{
	FUNC0(lps, BFA_LPS_SM_LOGOUT);
}