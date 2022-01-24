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
typedef  int u8 ;
struct nv_adma_port_priv {TYPE_1__* cpb; } ;
struct ata_queued_cmd {int dummy; } ;
struct ata_eh_info {int /*<<< orphan*/  action; int /*<<< orphan*/  err_mask; } ;
struct TYPE_4__ {struct ata_eh_info eh_info; } ;
struct ata_port {TYPE_2__ link; struct nv_adma_port_priv* private_data; } ;
struct TYPE_3__ {int resp_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_ERR_DEV ; 
 int /*<<< orphan*/  AC_ERR_HSM ; 
 int /*<<< orphan*/  AC_ERR_OTHER ; 
 int /*<<< orphan*/  AC_ERR_SYSTEM ; 
 int /*<<< orphan*/  ATA_EH_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int NV_CPB_RESP_ATA_ERR ; 
 int NV_CPB_RESP_CMD_ERR ; 
 int NV_CPB_RESP_CPB_ERR ; 
 int NV_CPB_RESP_DONE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_eh_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_eh_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_eh_info*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct ata_port*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ata_queued_cmd*) ; 
 struct ata_queued_cmd* FUNC9 (struct ata_port*,int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct ata_port *ap, int cpb_num, int force_err)
{
	struct nv_adma_port_priv *pp = ap->private_data;
	u8 flags = pp->cpb[cpb_num].resp_flags;

	FUNC1("CPB %d, flags=0x%x\n", cpb_num, flags);

	if (FUNC11((force_err ||
		     flags & (NV_CPB_RESP_ATA_ERR |
			      NV_CPB_RESP_CMD_ERR |
			      NV_CPB_RESP_CPB_ERR)))) {
		struct ata_eh_info *ehi = &ap->link.eh_info;
		int freeze = 0;

		FUNC3(ehi);
		FUNC2(ehi, "CPB resp_flags 0x%x: ", flags);
		if (flags & NV_CPB_RESP_ATA_ERR) {
			FUNC4(ehi, "ATA error");
			ehi->err_mask |= AC_ERR_DEV;
		} else if (flags & NV_CPB_RESP_CMD_ERR) {
			FUNC4(ehi, "CMD error");
			ehi->err_mask |= AC_ERR_DEV;
		} else if (flags & NV_CPB_RESP_CPB_ERR) {
			FUNC4(ehi, "CPB error");
			ehi->err_mask |= AC_ERR_SYSTEM;
			freeze = 1;
		} else {
			/* notifier error, but no error in CPB flags? */
			FUNC4(ehi, "unknown");
			ehi->err_mask |= AC_ERR_OTHER;
			freeze = 1;
		}
		/* Kill all commands. EH will determine what actually failed. */
		if (freeze)
			FUNC6(ap);
		else
			FUNC5(ap);
		return 1;
	}

	if (FUNC10(flags & NV_CPB_RESP_DONE)) {
		struct ata_queued_cmd *qc = FUNC9(ap, cpb_num);
		FUNC1("CPB flags done, flags=0x%x\n", flags);
		if (FUNC10(qc)) {
			FUNC0("Completing qc from tag %d\n", cpb_num);
			FUNC8(qc);
		} else {
			struct ata_eh_info *ehi = &ap->link.eh_info;
			/* Notifier bits set without a command may indicate the drive
			   is misbehaving. Raise host state machine violation on this
			   condition. */
			FUNC7(ap, KERN_ERR,
					"notifier for tag %d with no cmd?\n",
					cpb_num);
			ehi->err_mask |= AC_ERR_HSM;
			ehi->action |= ATA_EH_RESET;
			FUNC6(ap);
			return 1;
		}
	}
	return 0;
}