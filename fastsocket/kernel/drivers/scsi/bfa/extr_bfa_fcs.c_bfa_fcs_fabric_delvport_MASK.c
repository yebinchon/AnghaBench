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
struct bfa_fcs_vport_s {int /*<<< orphan*/  qe; } ;
struct bfa_fcs_fabric_s {int /*<<< orphan*/  wc; int /*<<< orphan*/  num_vports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct bfa_fcs_fabric_s *fabric,
			struct bfa_fcs_vport_s *vport)
{
	FUNC1(&vport->qe);
	fabric->num_vports--;
	FUNC0(&fabric->wc);
}