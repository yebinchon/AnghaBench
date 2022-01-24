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
struct kspd_notifications {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  kspd_notifylist ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(struct kspd_notifications *notify)
{
	FUNC0(&notify->list, &kspd_notifylist);
}