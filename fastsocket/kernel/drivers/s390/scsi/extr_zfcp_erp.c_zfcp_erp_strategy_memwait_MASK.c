#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct zfcp_erp_action {TYPE_1__ timer; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  zfcp_erp_memwait_handler ; 

__attribute__((used)) static void FUNC2(struct zfcp_erp_action *erp_action)
{
	FUNC1(&erp_action->timer);
	erp_action->timer.function = zfcp_erp_memwait_handler;
	erp_action->timer.data = (unsigned long) erp_action;
	erp_action->timer.expires = jiffies + HZ;
	FUNC0(&erp_action->timer);
}