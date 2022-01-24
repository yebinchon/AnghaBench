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
struct cxgbi_gather_list {int dummy; } ;
struct cxgbi_ddp_info {int /*<<< orphan*/  map_lock; int /*<<< orphan*/ * gl_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct cxgbi_ddp_info *ddp,
						int start, int count)
{
	FUNC1(&ddp->map_lock);
	FUNC0(&ddp->gl_map[start], 0,
		count * sizeof(struct cxgbi_gather_list *));
	FUNC2(&ddp->map_lock);
}