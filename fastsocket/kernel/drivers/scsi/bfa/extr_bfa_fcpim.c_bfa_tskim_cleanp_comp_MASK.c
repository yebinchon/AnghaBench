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
struct bfa_tskim_s {int /*<<< orphan*/  itnim; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_TSKIM_SM_IOS_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_tskim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tm_io_comps ; 

__attribute__((used)) static void
FUNC2(void *tskim_cbarg)
{
	struct bfa_tskim_s *tskim = tskim_cbarg;

	FUNC1(tskim->itnim, tm_io_comps);
	FUNC0(tskim, BFA_TSKIM_SM_IOS_DONE);
}