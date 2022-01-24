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
typedef  int /*<<< orphan*/  u64 ;
struct _sas_node {int /*<<< orphan*/  list; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  sas_node_lock; scalar_t__ shost_recovery; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,struct _sas_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct _sas_node* FUNC2 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC5(struct MPT3SAS_ADAPTER *ioc, u64 sas_address)
{
	struct _sas_node *sas_expander;
	unsigned long flags;

	if (ioc->shost_recovery)
		return;

	FUNC3(&ioc->sas_node_lock, flags);
	sas_expander = FUNC2(ioc,
	    sas_address);
	if (sas_expander)
		FUNC1(&sas_expander->list);
	FUNC4(&ioc->sas_node_lock, flags);
	if (sas_expander)
		FUNC0(ioc, sas_expander);
}