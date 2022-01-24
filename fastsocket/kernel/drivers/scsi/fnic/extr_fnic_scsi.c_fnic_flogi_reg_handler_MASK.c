#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct vnic_wq_copy {int dummy; } ;
struct TYPE_4__ {scalar_t__ map_dest; int /*<<< orphan*/  dest_addr; } ;
struct TYPE_3__ {int flags; } ;
struct fnic {scalar_t__* wq_copy_desc_low; int /*<<< orphan*/ * wq_copy_lock; TYPE_2__ ctlr; struct fc_lport* lport; scalar_t__ data_src_addr; TYPE_1__ config; struct vnic_wq_copy* wq_copy; } ;
struct fc_lport {int /*<<< orphan*/  host; int /*<<< orphan*/  e_d_tov; int /*<<< orphan*/  r_a_tov; } ;
typedef  enum fcpio_flogi_reg_format_type { ____Placeholder_fcpio_flogi_reg_format_type } fcpio_flogi_reg_format_type ;

/* Variables and functions */
 int EAGAIN ; 
 int ETH_ALEN ; 
 int FCPIO_FLOGI_REG_DEF_DEST ; 
 int FCPIO_FLOGI_REG_GW_DEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  SCSI_NO_TAG ; 
 int VFCF_FIP_CAPABLE ; 
 int /*<<< orphan*/  FUNC1 (struct vnic_wq_copy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnic_wq_copy*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fnic*,struct vnic_wq_copy*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (struct vnic_wq_copy*) ; 

int FUNC9(struct fnic *fnic, u32 fc_id)
{
	struct vnic_wq_copy *wq = &fnic->wq_copy[0];
	enum fcpio_flogi_reg_format_type format;
	struct fc_lport *lp = fnic->lport;
	u8 gw_mac[ETH_ALEN];
	int ret = 0;
	unsigned long flags;

	FUNC6(&fnic->wq_copy_lock[0], flags);

	if (FUNC8(wq) <= fnic->wq_copy_desc_low[0])
		FUNC3(fnic, wq);

	if (!FUNC8(wq)) {
		ret = -EAGAIN;
		goto flogi_reg_ioreq_end;
	}

	if (fnic->ctlr.map_dest) {
		FUNC5(gw_mac, 0xff, ETH_ALEN);
		format = FCPIO_FLOGI_REG_DEF_DEST;
	} else {
		FUNC4(gw_mac, fnic->ctlr.dest_addr, ETH_ALEN);
		format = FCPIO_FLOGI_REG_GW_DEST;
	}

	if ((fnic->config.flags & VFCF_FIP_CAPABLE) && !fnic->ctlr.map_dest) {
		FUNC1(wq, SCSI_NO_TAG,
						fc_id, gw_mac,
						fnic->data_src_addr,
						lp->r_a_tov, lp->e_d_tov);
		FUNC0(KERN_DEBUG, fnic->lport->host,
			      "FLOGI FIP reg issued fcid %x src %pM dest %pM\n",
			      fc_id, fnic->data_src_addr, gw_mac);
	} else {
		FUNC2(wq, SCSI_NO_TAG,
						  format, fc_id, gw_mac);
		FUNC0(KERN_DEBUG, fnic->lport->host,
			      "FLOGI reg issued fcid %x map %d dest %pM\n",
			      fc_id, fnic->ctlr.map_dest, gw_mac);
	}

flogi_reg_ioreq_end:
	FUNC7(&fnic->wq_copy_lock[0], flags);
	return ret;
}