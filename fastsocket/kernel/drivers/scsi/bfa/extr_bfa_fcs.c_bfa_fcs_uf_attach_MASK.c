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
struct bfa_fcs_s {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  bfa_fcs_uf_recv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfa_fcs_s*) ; 

void
FUNC1(struct bfa_fcs_s *fcs)
{
	FUNC0(fcs->bfa, bfa_fcs_uf_recv, fcs);
}