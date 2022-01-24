#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_17__ {scalar_t__ carrierwait; } ;
struct TYPE_18__ {int drv_index; int last_dir; int last_l2; int dialing; TYPE_4__ emu; int /*<<< orphan*/  isdn_driver; scalar_t__ isdn_channel; TYPE_1__* fax; int /*<<< orphan*/  last_num; int /*<<< orphan*/  line; } ;
typedef  TYPE_5__ modem_info ;
struct TYPE_15__ {int si1; int si2; int /*<<< orphan*/  eazmsn; int /*<<< orphan*/  phone; } ;
struct TYPE_16__ {TYPE_2__ setup; TYPE_1__* fax; int /*<<< orphan*/  num; } ;
struct TYPE_19__ {int /*<<< orphan*/  command; TYPE_3__ parm; scalar_t__ arg; int /*<<< orphan*/  driver; } ;
typedef  TYPE_6__ isdn_ctrl ;
struct TYPE_20__ {int* mdmreg; int /*<<< orphan*/  msn; } ;
typedef  TYPE_7__ atemu ;
struct TYPE_14__ {int /*<<< orphan*/  direction; } ;
struct TYPE_13__ {int /*<<< orphan*/ * num; int /*<<< orphan*/  lock; int /*<<< orphan*/ * usage; int /*<<< orphan*/ * m_idx; scalar_t__* chanmap; int /*<<< orphan*/ * drvmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISDN_CMD_CLREAZ ; 
 int /*<<< orphan*/  ISDN_CMD_DIAL ; 
 int /*<<< orphan*/  ISDN_CMD_SETEAZ ; 
 int /*<<< orphan*/  ISDN_CMD_SETL2 ; 
 int /*<<< orphan*/  ISDN_CMD_SETL3 ; 
 int ISDN_PROTO_L2_FAX ; 
 int ISDN_PROTO_L2_MODEM ; 
 int ISDN_PROTO_L2_TRANS ; 
 int /*<<< orphan*/  ISDN_TIMER_CARRIER ; 
 int /*<<< orphan*/  ISDN_TTY_FAX_CONN_OUT ; 
 int ISDN_USAGE_MODEM ; 
 int /*<<< orphan*/  ISDN_USAGE_OUTGOING ; 
 int ISDN_USAGE_VOICE ; 
 size_t REG_L2PROT ; 
 size_t REG_L3PROT ; 
 size_t REG_SI1 ; 
 size_t REG_SI1I ; 
 size_t REG_SI2 ; 
 int /*<<< orphan*/  RESULT_NO_DIALTONE ; 
 int* bit2si ; 
 TYPE_12__* dev ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int FUNC2 (int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int* si2bit ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC11(char *n, modem_info * info, atemu * m)
{
	int usg = ISDN_USAGE_MODEM;
	int si = 7;
	int l2 = m->mdmreg[REG_L2PROT];
	u_long flags;
	isdn_ctrl cmd;
	int i;
	int j;

	for (j = 7; j >= 0; j--)
		if (m->mdmreg[REG_SI1] & (1 << j)) {
			si = bit2si[j];
			break;
		}
	usg = FUNC0(si, l2);
#ifdef CONFIG_ISDN_AUDIO
	if ((si == 1) && 
		(l2 != ISDN_PROTO_L2_MODEM)
#ifdef CONFIG_ISDN_TTY_FAX
		&& (l2 != ISDN_PROTO_L2_FAX)
#endif
		) {
		l2 = ISDN_PROTO_L2_TRANS;
		usg = ISDN_USAGE_VOICE;
	}
#endif
	m->mdmreg[REG_SI1I] = si2bit[si];
	FUNC7(&dev->lock, flags);
	i = FUNC2(usg, l2, m->mdmreg[REG_L3PROT], -1, -1, m->msn);
	if (i < 0) {
		FUNC8(&dev->lock, flags);
		FUNC6(RESULT_NO_DIALTONE, info);
	} else {
		info->isdn_driver = dev->drvmap[i];
		info->isdn_channel = dev->chanmap[i];
		info->drv_index = i;
		dev->m_idx[i] = info->line;
		dev->usage[i] |= ISDN_USAGE_OUTGOING;
		info->last_dir = 1;
		FUNC10(info->last_num, n);
		FUNC3();
		FUNC8(&dev->lock, flags);
		cmd.driver = info->isdn_driver;
		cmd.arg = info->isdn_channel;
		cmd.command = ISDN_CMD_CLREAZ;
		FUNC1(&cmd);
		FUNC10(cmd.parm.num, FUNC4(m->msn, info->isdn_driver));
		cmd.driver = info->isdn_driver;
		cmd.command = ISDN_CMD_SETEAZ;
		FUNC1(&cmd);
		cmd.driver = info->isdn_driver;
		cmd.command = ISDN_CMD_SETL2;
		info->last_l2 = l2;
		cmd.arg = info->isdn_channel + (l2 << 8);
		FUNC1(&cmd);
		cmd.driver = info->isdn_driver;
		cmd.command = ISDN_CMD_SETL3;
		cmd.arg = info->isdn_channel + (m->mdmreg[REG_L3PROT] << 8);
#ifdef CONFIG_ISDN_TTY_FAX
		if (l2 == ISDN_PROTO_L2_FAX) {
			cmd.parm.fax = info->fax;
			info->fax->direction = ISDN_TTY_FAX_CONN_OUT;
		}
#endif
		FUNC1(&cmd);
		cmd.driver = info->isdn_driver;
		cmd.arg = info->isdn_channel;
		FUNC9(cmd.parm.setup.phone, "%s", n);
		FUNC9(cmd.parm.setup.eazmsn, "%s",
			FUNC4(m->msn, info->isdn_driver));
		cmd.parm.setup.si1 = si;
		cmd.parm.setup.si2 = m->mdmreg[REG_SI2];
		cmd.command = ISDN_CMD_DIAL;
		info->dialing = 1;
		info->emu.carrierwait = 0;
		FUNC10(dev->num[i], n);
		FUNC3();
		FUNC1(&cmd);
		FUNC5(ISDN_TIMER_CARRIER, 1);
	}
}