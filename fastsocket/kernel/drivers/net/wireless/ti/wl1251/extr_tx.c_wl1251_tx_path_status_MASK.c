#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct wl1251 {TYPE_1__* data_path; } ;
struct TYPE_2__ {int tx_control_addr; } ;

/* Variables and functions */
 int EBUSY ; 
 int TX_STATUS_DATA_OUT_COUNT_MASK ; 
 int FUNC0 (struct wl1251*,int) ; 
 int FUNC1 (struct wl1251*,int) ; 

__attribute__((used)) static int FUNC2(struct wl1251 *wl)
{
	u32 status, addr, data_out_count;
	bool busy;

	addr = wl->data_path->tx_control_addr;
	status = FUNC0(wl, addr);
	data_out_count = status & TX_STATUS_DATA_OUT_COUNT_MASK;
	busy = FUNC1(wl, data_out_count);

	if (busy)
		return -EBUSY;

	return 0;
}