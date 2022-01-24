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
struct ehca_sport {int /*<<< orphan*/  mod_sqp_lock; scalar_t__* ibqp_sqp; } ;

/* Variables and functions */
 size_t IB_QPT_GSI ; 
 size_t IB_QPT_SMI ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct ehca_sport *sport)
{
	int aqp1_destroyed;
	unsigned long flags;

	FUNC1(&sport->mod_sqp_lock, flags);

	aqp1_destroyed = !sport->ibqp_sqp[IB_QPT_GSI];

	if (sport->ibqp_sqp[IB_QPT_SMI])
		FUNC0(sport->ibqp_sqp[IB_QPT_SMI]);
	if (!aqp1_destroyed)
		FUNC0(sport->ibqp_sqp[IB_QPT_GSI]);

	FUNC2(&sport->mod_sqp_lock, flags);

	return aqp1_destroyed;
}