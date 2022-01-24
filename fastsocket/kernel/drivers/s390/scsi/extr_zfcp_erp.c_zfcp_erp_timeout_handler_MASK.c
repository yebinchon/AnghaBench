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
struct zfcp_erp_action {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_STATUS_ERP_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct zfcp_erp_action*,int /*<<< orphan*/ ) ; 

void FUNC1(unsigned long data)
{
	struct zfcp_erp_action *act = (struct zfcp_erp_action *) data;
	FUNC0(act, ZFCP_STATUS_ERP_TIMEDOUT);
}