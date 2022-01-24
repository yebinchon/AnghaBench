#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int /*<<< orphan*/  (* printdebug ) (TYPE_2__*,char*,scalar_t__) ;} ;
struct teimgr {TYPE_2__ tei_m; TYPE_1__* l2; } ;
struct TYPE_4__ {int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int DEBUG_L2_TEI ; 
 int /*<<< orphan*/  EV_ASSIGN ; 
 int /*<<< orphan*/  EV_CHKREQ ; 
 int /*<<< orphan*/  EV_CHKRESP ; 
 int /*<<< orphan*/  EV_DENIED ; 
 int /*<<< orphan*/  EV_REMOVE ; 
 int /*<<< orphan*/  EV_VERIFY ; 
 int /*<<< orphan*/  FLG_FIXED_TEI ; 
 scalar_t__ ID_ASSIGNED ; 
 scalar_t__ ID_CHK_REQ ; 
 scalar_t__ ID_CHK_RES ; 
 scalar_t__ ID_DENIED ; 
 scalar_t__ ID_REMOVE ; 
 scalar_t__ ID_VERIFY ; 
 int* debug ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct teimgr *tm, u_int mt, u_char *dp, int len)
{
	if (FUNC2(FLG_FIXED_TEI, &tm->l2->flag))
		return;
	if (*debug & DEBUG_L2_TEI)
		tm->tei_m.printdebug(&tm->tei_m, "tei handler mt %x", mt);
	if (mt == ID_ASSIGNED)
		FUNC0(&tm->tei_m, EV_ASSIGN, dp);
	else if (mt == ID_DENIED)
		FUNC0(&tm->tei_m, EV_DENIED, dp);
	else if (mt == ID_CHK_REQ)
		FUNC0(&tm->tei_m, EV_CHKREQ, dp);
	else if (mt == ID_REMOVE)
		FUNC0(&tm->tei_m, EV_REMOVE, dp);
	else if (mt == ID_VERIFY)
		FUNC0(&tm->tei_m, EV_VERIFY, dp);
	else if (mt == ID_CHK_RES)
		FUNC0(&tm->tei_m, EV_CHKRESP, dp);
}