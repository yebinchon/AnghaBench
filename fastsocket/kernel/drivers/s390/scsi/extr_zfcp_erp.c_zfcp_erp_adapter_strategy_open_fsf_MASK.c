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
struct zfcp_erp_action {TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  stat_miss; } ;

/* Variables and functions */
 scalar_t__ ZFCP_ERP_FAILED ; 
 int ZFCP_ERP_SUCCEEDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct zfcp_erp_action*) ; 
 scalar_t__ FUNC2 (struct zfcp_erp_action*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct zfcp_erp_action *act)
{
	if (FUNC1(act) == ZFCP_ERP_FAILED)
		return ZFCP_ERP_FAILED;

	if (FUNC2(act) == ZFCP_ERP_FAILED)
		return ZFCP_ERP_FAILED;

	FUNC0(&act->adapter->stat_miss, 16);
	if (FUNC3(act->adapter))
		return ZFCP_ERP_FAILED;

	return ZFCP_ERP_SUCCEEDED;
}