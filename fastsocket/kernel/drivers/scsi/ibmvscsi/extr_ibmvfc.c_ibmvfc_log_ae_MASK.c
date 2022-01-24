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
struct ibmvfc_host {scalar_t__ state; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCH_EVT_LINKDOWN ; 
 int /*<<< orphan*/  FCH_EVT_LINKUP ; 
 int /*<<< orphan*/  FCH_EVT_RSCN ; 
 int IBMVFC_AE_LINKDOWN ; 
 int IBMVFC_AE_LINKUP ; 
 int IBMVFC_AE_RSCN ; 
 scalar_t__ IBMVFC_HALTED ; 
 scalar_t__ IBMVFC_INITIALIZING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ibmvfc_host *vhost, int events)
{
	if (events & IBMVFC_AE_RSCN)
		FUNC1(vhost->host, FUNC0(), FCH_EVT_RSCN, 0);
	if ((events & IBMVFC_AE_LINKDOWN) &&
	    vhost->state >= IBMVFC_HALTED)
		FUNC1(vhost->host, FUNC0(), FCH_EVT_LINKDOWN, 0);
	if ((events & IBMVFC_AE_LINKUP) &&
	    vhost->state == IBMVFC_INITIALIZING)
		FUNC1(vhost->host, FUNC0(), FCH_EVT_LINKUP, 0);
}