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
struct dca_provider {int /*<<< orphan*/  id; int /*<<< orphan*/ * cd; } ;

/* Variables and functions */
 int /*<<< orphan*/  dca_idr ; 
 int /*<<< orphan*/  dca_idr_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dca_provider *dca)
{
	FUNC0(dca->cd);
	dca->cd = NULL;
	FUNC2(&dca_idr_lock);
	FUNC1(&dca_idr, dca->id);
	FUNC3(&dca_idr_lock);
}