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
struct srp_target_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  req_lim; int /*<<< orphan*/  free_tx; } ;
struct srp_iu {int /*<<< orphan*/  list; } ;
typedef  enum srp_iu_type { ____Placeholder_srp_iu_type } srp_iu_type ;

/* Variables and functions */
 int SRP_IU_RSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct srp_target_port *target, struct srp_iu *iu,
			  enum srp_iu_type iu_type)
{
	unsigned long flags;

	FUNC1(&target->lock, flags);
	FUNC0(&iu->list, &target->free_tx);
	if (iu_type != SRP_IU_RSP)
		++target->req_lim;
	FUNC2(&target->lock, flags);
}