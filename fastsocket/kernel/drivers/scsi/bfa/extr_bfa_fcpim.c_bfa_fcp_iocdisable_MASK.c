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
struct bfa_s {int dummy; } ;
struct bfa_fcp_mod_s {int dummy; } ;

/* Variables and functions */
 struct bfa_fcp_mod_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcp_mod_s*) ; 

__attribute__((used)) static void
FUNC2(struct bfa_s *bfa)
{
	struct bfa_fcp_mod_s *fcp = FUNC0(bfa);

	FUNC1(fcp);
}