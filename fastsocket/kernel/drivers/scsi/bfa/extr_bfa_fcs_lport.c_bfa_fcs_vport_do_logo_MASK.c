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
struct TYPE_2__ {int /*<<< orphan*/  logo_sent; } ;
struct bfa_fcs_vport_s {int /*<<< orphan*/  lps; TYPE_1__ vport_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_vport_s*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bfa_fcs_vport_s *vport)
{
	FUNC3(FUNC0(vport), FUNC1(vport));

	vport->vport_stats.logo_sent++;
	FUNC2(vport->lps);
}