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
struct _sas_node {int /*<<< orphan*/  list; } ;
struct MPT2SAS_ADAPTER {int /*<<< orphan*/  sas_node_lock; int /*<<< orphan*/  sas_expander_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC3(struct MPT2SAS_ADAPTER *ioc,
    struct _sas_node *sas_expander)
{
	unsigned long flags;

	FUNC1(&ioc->sas_node_lock, flags);
	FUNC0(&sas_expander->list, &ioc->sas_expander_list);
	FUNC2(&ioc->sas_node_lock, flags);
}