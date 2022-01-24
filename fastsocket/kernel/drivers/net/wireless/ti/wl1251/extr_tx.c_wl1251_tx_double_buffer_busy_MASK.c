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
struct wl1251 {int data_in_count; } ;

/* Variables and functions */
 int DP_TX_PACKET_RING_CHUNK_NUM ; 
 scalar_t__ TX_STATUS_DATA_OUT_COUNT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static bool FUNC1(struct wl1251 *wl, u32 data_out_count)
{
	int used, data_in_count;

	data_in_count = wl->data_in_count;

	if (data_in_count < data_out_count)
		/* data_in_count has wrapped */
		data_in_count += TX_STATUS_DATA_OUT_COUNT_MASK + 1;

	used = data_in_count - data_out_count;

	FUNC0(used < 0);
	FUNC0(used > DP_TX_PACKET_RING_CHUNK_NUM);

	if (used >= DP_TX_PACKET_RING_CHUNK_NUM)
		return true;
	else
		return false;
}