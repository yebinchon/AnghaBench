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
struct tg3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_EVENT ; 
 int /*<<< orphan*/  MAC_STATUS ; 
 int MAC_STATUS_CFG_CHANGED ; 
 int MAC_STATUS_LNKSTATE_CHANGED ; 
 int MAC_STATUS_MI_COMPLETION ; 
 int MAC_STATUS_SYNC_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct tg3 *tp)
{
	FUNC0(MAC_EVENT, 0);

	FUNC1(MAC_STATUS,
	       MAC_STATUS_SYNC_CHANGED |
	       MAC_STATUS_CFG_CHANGED |
	       MAC_STATUS_MI_COMPLETION |
	       MAC_STATUS_LNKSTATE_CHANGED);
	FUNC2(40);
}