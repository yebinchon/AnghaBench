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
struct pgpath {int dummy; } ;
struct multipath {scalar_t__ pg_init_count; scalar_t__ pg_init_retries; int pg_init_required; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct multipath *m, struct pgpath *pgpath)
{
	unsigned long flags;
	int limit_reached = 0;

	FUNC0(&m->lock, flags);

	if (m->pg_init_count <= m->pg_init_retries)
		m->pg_init_required = 1;
	else
		limit_reached = 1;

	FUNC1(&m->lock, flags);

	return limit_reached;
}