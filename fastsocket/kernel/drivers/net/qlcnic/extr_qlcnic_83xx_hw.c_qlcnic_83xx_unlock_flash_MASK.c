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
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_FLASH_LOCK_OWNER ; 
 int /*<<< orphan*/  QLCNIC_FLASH_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct qlcnic_adapter *adapter)
{
	FUNC0(adapter, QLCNIC_FLASH_UNLOCK);
	FUNC1(adapter, QLCNIC_FLASH_LOCK_OWNER, 0xFF);
}