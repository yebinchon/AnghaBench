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
struct BusLogic_HostAdapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BusLogic_ExecuteMailboxCommand ; 
 int /*<<< orphan*/  FUNC0 (struct BusLogic_HostAdapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct BusLogic_HostAdapter *HostAdapter)
{
	FUNC0(HostAdapter, BusLogic_ExecuteMailboxCommand);
}