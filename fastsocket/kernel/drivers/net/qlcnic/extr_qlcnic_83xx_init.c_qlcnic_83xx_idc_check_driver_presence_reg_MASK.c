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
typedef  int u32 ;
struct qlcnic_adapter {int /*<<< orphan*/  ahw; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_IDC_DRV_PRESENCE ; 

__attribute__((used)) static int
FUNC1(struct qlcnic_adapter *adapter)
{
	u32 val;

	val = FUNC0(adapter->ahw, QLC_83XX_IDC_DRV_PRESENCE);
	if ((val & 0xFFFF))
		return 1;
	else
		return 0;
}