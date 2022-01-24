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
typedef  scalar_t__ u32 ;
struct qlcnic_hardware_context {int dummy; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_FW_MBX_CTRL ; 
 scalar_t__ QLCNIC_MBX_TIMEOUT ; 
 scalar_t__ QLCNIC_RCODE_TIMEOUT ; 
 scalar_t__ FUNC0 (struct qlcnic_hardware_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

u32 FUNC2(struct qlcnic_adapter *adapter, u32 *wait_time)
{
	u32 data;
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	/* wait for mailbox completion */
	do {
		data = FUNC0(ahw, QLCNIC_FW_MBX_CTRL);
		if (++(*wait_time) > QLCNIC_MBX_TIMEOUT) {
			data = QLCNIC_RCODE_TIMEOUT;
			break;
		}
		FUNC1(1);
	} while (!data);
	return data;
}