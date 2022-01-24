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
struct adapter {int flags; int /*<<< orphan*/  tp; } ;

/* Variables and functions */
 int TSO_CAPABLE ; 
 int UDP_CSUM_CAPABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct adapter *adapter)
{
	if (adapter->flags & TSO_CAPABLE)
		FUNC0(adapter->tp, 1);	/* for TSO only */
	if (adapter->flags & UDP_CSUM_CAPABLE)
		FUNC2(adapter->tp, 1);
	FUNC1(adapter->tp, 1);
}