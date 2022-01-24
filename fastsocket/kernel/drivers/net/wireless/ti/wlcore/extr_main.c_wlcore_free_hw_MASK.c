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
struct wl1271 {int fwlog_size; int /*<<< orphan*/  hw; int /*<<< orphan*/ * priv; int /*<<< orphan*/  freezable_wq; int /*<<< orphan*/ * tx_res_if; int /*<<< orphan*/ * fw_status_1; int /*<<< orphan*/ * nvs; int /*<<< orphan*/  fw_type; int /*<<< orphan*/ * fw; int /*<<< orphan*/  aggr_buf_size; scalar_t__ aggr_buf; int /*<<< orphan*/  dummy_packet; scalar_t__ fwlog; int /*<<< orphan*/ * mbox; int /*<<< orphan*/ * buffer_32; int /*<<< orphan*/  dev; int /*<<< orphan*/  mutex; int /*<<< orphan*/  fwlog_waitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  WL12XX_FW_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_bt_coex_state ; 
 int /*<<< orphan*/  dev_attr_hw_pg_ver ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fwlog_attr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct wl1271*) ; 

int FUNC14(struct wl1271 *wl)
{
	/* Unblock any fwlog readers */
	FUNC9(&wl->mutex);
	wl->fwlog_size = -1;
	FUNC12(&wl->fwlog_waitq);
	FUNC10(&wl->mutex);

	FUNC2(wl->dev, &fwlog_attr);

	FUNC3(wl->dev, &dev_attr_hw_pg_ver);

	FUNC3(wl->dev, &dev_attr_bt_coex_state);
	FUNC8(wl->buffer_32);
	FUNC8(wl->mbox);
	FUNC4((unsigned long)wl->fwlog);
	FUNC1(wl->dummy_packet);
	FUNC5((unsigned long)wl->aggr_buf, FUNC6(wl->aggr_buf_size));

	FUNC13(wl);

	FUNC11(wl->fw);
	wl->fw = NULL;
	wl->fw_type = WL12XX_FW_TYPE_NONE;
	FUNC8(wl->nvs);
	wl->nvs = NULL;

	FUNC8(wl->fw_status_1);
	FUNC8(wl->tx_res_if);
	FUNC0(wl->freezable_wq);

	FUNC8(wl->priv);
	FUNC7(wl->hw);

	return 0;
}