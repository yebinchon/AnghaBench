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
struct wl1271 {scalar_t__ tx_frames_cnt; scalar_t__ num_tx_desc; int /*<<< orphan*/ ** tx_frames; int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_frames_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  WL1271_FLAG_FW_TX_BUSY ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct wl1271 *wl, int id)
{
	if (FUNC0(id, wl->tx_frames_map)) {
		if (FUNC2(wl->tx_frames_cnt == wl->num_tx_desc))
			FUNC1(WL1271_FLAG_FW_TX_BUSY, &wl->flags);

		wl->tx_frames[id] = NULL;
		wl->tx_frames_cnt--;
	}
}