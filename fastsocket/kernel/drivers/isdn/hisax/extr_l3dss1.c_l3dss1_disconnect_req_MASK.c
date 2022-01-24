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
struct sk_buff {int dummy; } ;
struct TYPE_5__ {char* uus1_data; } ;
struct TYPE_6__ {TYPE_2__ dss1; } ;
struct TYPE_4__ {scalar_t__ cause; } ;
struct l3_process {int /*<<< orphan*/  timer; int /*<<< orphan*/  st; TYPE_3__ prot; int /*<<< orphan*/  callref; TYPE_1__ para; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC_T305 ; 
 int DL_DATA ; 
 int /*<<< orphan*/  IE_CAUSE ; 
 int /*<<< orphan*/  IE_USER_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_DISCONNECT ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NO_CAUSE ; 
 int REQUEST ; 
 int /*<<< orphan*/  FUNC2 (struct l3_process*) ; 
 int /*<<< orphan*/  T305 ; 
 struct sk_buff* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct l3_process*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,char*) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(struct l3_process *pc, u_char pr, void *arg)
{
	struct sk_buff *skb;
	u_char tmp[16+40];
	u_char *p = tmp;
	int l;
	u_char cause = 16;

	if (pc->para.cause != NO_CAUSE)
		cause = pc->para.cause;

	FUNC2(pc);

	FUNC1(p, pc->callref, MT_DISCONNECT);

	*p++ = IE_CAUSE;
	*p++ = 0x2;
	*p++ = 0x80;
	*p++ = cause | 0x80;

        if (pc->prot.dss1.uus1_data[0])
	 { *p++ = IE_USER_USER; /* UUS info element */
           *p++ = FUNC9(pc->prot.dss1.uus1_data) + 1;
           *p++ = 0x04; /* IA5 chars */
           FUNC8(p,pc->prot.dss1.uus1_data);
           p += FUNC9(pc->prot.dss1.uus1_data);
           pc->prot.dss1.uus1_data[0] = '\0';   
         } 

	l = p - tmp;
	if (!(skb = FUNC3(l)))
		return;
	FUNC5(FUNC7(skb, l), tmp, l);
	FUNC6(pc, 11);
	FUNC4(pc->st, DL_DATA | REQUEST, skb);
	FUNC0(&pc->timer, T305, CC_T305);
}