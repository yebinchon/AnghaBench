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
typedef  int /*<<< orphan*/  u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {char* uus1_data; } ;
struct TYPE_4__ {TYPE_1__ ni1; } ;
struct l3_process {int /*<<< orphan*/  st; TYPE_2__ prot; int /*<<< orphan*/  callref; } ;

/* Variables and functions */
 int DL_DATA ; 
 int /*<<< orphan*/  IE_USER_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REQUEST ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(struct l3_process *pc, u_char cmd)
{
	struct sk_buff *skb;
	u_char tmp[16+40];
	u_char *p = tmp;
	int l;

	FUNC0(p, pc->callref, cmd);

        if (pc->prot.ni1.uus1_data[0])
	 { *p++ = IE_USER_USER; /* UUS info element */
           *p++ = FUNC6(pc->prot.ni1.uus1_data) + 1;
           *p++ = 0x04; /* IA5 chars */
           FUNC5(p,pc->prot.ni1.uus1_data);
           p += FUNC6(pc->prot.ni1.uus1_data);
           pc->prot.ni1.uus1_data[0] = '\0';   
         } 

	l = p - tmp;
	if (!(skb = FUNC1(l)))
		return;
	FUNC3(FUNC4(skb, l), tmp, l);
	FUNC2(pc->st, DL_DATA | REQUEST, skb);
}