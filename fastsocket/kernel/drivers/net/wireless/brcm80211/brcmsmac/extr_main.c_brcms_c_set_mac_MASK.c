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
struct brcms_c_info {int dummy; } ;
struct brcms_bss_cfg {int /*<<< orphan*/  cur_etheraddr; struct brcms_c_info* wlc; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCM_MAC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_c_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct brcms_bss_cfg *bsscfg)
{
	int err = 0;
	struct brcms_c_info *wlc = bsscfg->wlc;

	/* enter the MAC addr into the RXE match registers */
	FUNC1(wlc, RCM_MAC_OFFSET, bsscfg->cur_etheraddr);

	FUNC0(wlc);

	return err;
}