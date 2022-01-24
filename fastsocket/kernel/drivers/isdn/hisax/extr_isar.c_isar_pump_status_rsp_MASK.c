#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct isar_reg {int* par; } ;
struct IsdnCardState {int debug; } ;
struct TYPE_5__ {int conmsg; TYPE_1__* reg; } ;
struct TYPE_6__ {TYPE_2__ isar; } ;
struct BCState {int conmsg; TYPE_3__ hw; struct IsdnCardState* cs; } ;
struct TYPE_4__ {int /*<<< orphan*/  Flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISAR_RATE_REQ ; 
 int L1_DEB_HSCX ; 
 int L1_DEB_WARN ; 
 int /*<<< orphan*/  FUNC0 (struct IsdnCardState*,char*,int) ; 
 char** dmril ; 
 char** dmrim ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct BCState *bcs, struct isar_reg *ireg) {
	struct IsdnCardState *cs = bcs->cs;
	u_char ril = ireg->par[0];
	u_char rim;

	if (!FUNC2(ISAR_RATE_REQ, &bcs->hw.isar.reg->Flags))
		return; 
	if (ril > 14) {
		if (cs->debug & L1_DEB_WARN)
			FUNC0(cs, "wrong pstrsp ril=%d",ril);
		ril = 15;
	}
	switch(ireg->par[1]) {
		case 0:
			rim = 0;
			break;
		case 0x20:
			rim = 2;
			break;
		case 0x40:
			rim = 3;
			break;
		case 0x41:
			rim = 4;
			break;
		case 0x51:
			rim = 5;
			break;
		case 0x61:
			rim = 6;
			break;
		case 0x71:
			rim = 7;
			break;
		case 0x82:
			rim = 8;
			break;
		case 0x92:
			rim = 9;
			break;
		case 0xa2:
			rim = 10;
			break;
		default:
			rim = 1;
			break;
	}
	FUNC1(bcs->hw.isar.conmsg,"%s %s", dmril[ril], dmrim[rim]);
	bcs->conmsg = bcs->hw.isar.conmsg;
	if (cs->debug & L1_DEB_HSCX)
		FUNC0(cs, "pump strsp %s", bcs->conmsg);
}