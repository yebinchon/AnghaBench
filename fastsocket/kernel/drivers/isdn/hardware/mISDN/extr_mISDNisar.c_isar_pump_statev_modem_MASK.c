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
typedef  int u8 ;
struct isar_ch {TYPE_1__* is; int /*<<< orphan*/  dpath; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  Flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_MOD_CONNECT ; 
 int /*<<< orphan*/  HW_MOD_NOCARR ; 
 int ISAR_HIS_PSTREQ ; 
 int /*<<< orphan*/  ISAR_RATE_REQ ; 
#define  PSEV_10MS_TIMER 140 
#define  PSEV_CON_OFF 139 
#define  PSEV_CON_ON 138 
#define  PSEV_CTS_OFF 137 
#define  PSEV_CTS_ON 136 
#define  PSEV_DCD_OFF 135 
#define  PSEV_DCD_ON 134 
#define  PSEV_DSR_OFF 133 
#define  PSEV_DSR_ON 132 
#define  PSEV_GSTN_CLR 131 
#define  PSEV_REM_REN 130 
#define  PSEV_REM_RET 129 
#define  PSEV_V24_OFF 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isar_ch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct isar_ch *ch, u8 devt) {
	u8 dps = FUNC0(ch->dpath);

	switch (devt) {
	case PSEV_10MS_TIMER:
		FUNC2("%s: pump stev TIMER\n", ch->is->name);
		break;
	case PSEV_CON_ON:
		FUNC2("%s: pump stev CONNECT\n", ch->is->name);
		FUNC1(ch, HW_MOD_CONNECT);
		break;
	case PSEV_CON_OFF:
		FUNC2("%s: pump stev NO CONNECT\n", ch->is->name);
		FUNC4(ch->is, dps | ISAR_HIS_PSTREQ, 0, 0, NULL);
		FUNC1(ch, HW_MOD_NOCARR);
		break;
	case PSEV_V24_OFF:
		FUNC2("%s: pump stev V24 OFF\n", ch->is->name);
		break;
	case PSEV_CTS_ON:
		FUNC2("%s: pump stev CTS ON\n", ch->is->name);
		break;
	case PSEV_CTS_OFF:
		FUNC2("%s pump stev CTS OFF\n", ch->is->name);
		break;
	case PSEV_DCD_ON:
		FUNC2("%s: pump stev CARRIER ON\n", ch->is->name);
		FUNC5(ISAR_RATE_REQ, &ch->is->Flags);
		FUNC4(ch->is, dps | ISAR_HIS_PSTREQ, 0, 0, NULL);
		break;
	case PSEV_DCD_OFF:
		FUNC2("%s: pump stev CARRIER OFF\n", ch->is->name);
		break;
	case PSEV_DSR_ON:
		FUNC2("%s: pump stev DSR ON\n", ch->is->name);
		break;
	case PSEV_DSR_OFF:
		FUNC2("%s: pump stev DSR_OFF\n", ch->is->name);
		break;
	case PSEV_REM_RET:
		FUNC2("%s: pump stev REMOTE RETRAIN\n", ch->is->name);
		break;
	case PSEV_REM_REN:
		FUNC2("%s: pump stev REMOTE RENEGOTIATE\n", ch->is->name);
		break;
	case PSEV_GSTN_CLR:
		FUNC2("%s: pump stev GSTN CLEAR\n", ch->is->name);
		break;
	default:
		FUNC3("u%s: nknown pump stev %x\n", ch->is->name, devt);
		break;
	}
}