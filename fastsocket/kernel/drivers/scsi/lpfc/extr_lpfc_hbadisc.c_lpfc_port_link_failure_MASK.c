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
struct lpfc_vport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_VPORT_LINKDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct lpfc_vport *vport)
{
	FUNC5(vport, FC_VPORT_LINKDOWN);

	/* Cleanup any outstanding received buffers */
	FUNC1(vport);

	/* Cleanup any outstanding RSCN activity */
	FUNC4(vport);

	/* Cleanup any outstanding ELS commands */
	FUNC3(vport);

	FUNC2(vport, 0);

	/* Turn off discovery timer if its running */
	FUNC0(vport);
}