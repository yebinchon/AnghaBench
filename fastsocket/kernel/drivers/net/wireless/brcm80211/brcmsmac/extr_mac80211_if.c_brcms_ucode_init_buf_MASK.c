#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct firmware_hdr {int /*<<< orphan*/  offset; int /*<<< orphan*/  idx; int /*<<< orphan*/  len; } ;
struct TYPE_8__ {int fw_cnt; int* hdr_num_entries; TYPE_2__** fw_bin; TYPE_1__** fw_hdr; } ;
struct brcms_info {TYPE_5__* wlc; TYPE_3__ fw; } ;
struct TYPE_10__ {TYPE_4__* hw; } ;
struct TYPE_9__ {int /*<<< orphan*/  d11core; } ;
struct TYPE_7__ {int /*<<< orphan*/ * data; } ;
struct TYPE_6__ {scalar_t__ data; } ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 void* FUNC1 (int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct brcms_info *wl, void **pbuf, u32 idx)
{
	int i, entry;
	const u8 *pdata;
	struct firmware_hdr *hdr;
	for (i = 0; i < wl->fw.fw_cnt; i++) {
		hdr = (struct firmware_hdr *)wl->fw.fw_hdr[i]->data;
		for (entry = 0; entry < wl->fw.hdr_num_entries[i];
		     entry++, hdr++) {
			u32 len = FUNC2(hdr->len);
			if (FUNC2(hdr->idx) == idx) {
				pdata = wl->fw.fw_bin[i]->data +
					FUNC2(hdr->offset);
				*pbuf = FUNC1(pdata, len, GFP_ATOMIC);
				if (*pbuf == NULL)
					goto fail;

				return 0;
			}
		}
	}
	FUNC0(wl->wlc->hw->d11core,
		  "ERROR: ucode buf tag:%d can not be found!\n", idx);
	*pbuf = NULL;
fail:
	return -ENODATA;
}