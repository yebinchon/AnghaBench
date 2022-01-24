#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ptype; char** s0num; } ;
typedef  TYPE_1__ isdnloop_card ;

/* Variables and functions */
#define  ISDN_PTYPE_1TR6 129 
#define  ISDN_PTYPE_EURO 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4(isdnloop_card * card, char *phone, int caller)
{
	int i;
	static char nphone[30];

	if (!card) {
		FUNC0("BUG!!!\n");
		return "";
	}
	switch (card->ptype) {
		case ISDN_PTYPE_EURO:
			if (caller) {
				for (i = 0; i < 2; i++)
					if (!(FUNC2(card->s0num[i], phone)))
						return (phone);
				return (card->s0num[0]);
			}
			return (phone);
			break;
		case ISDN_PTYPE_1TR6:
			if (caller) {
				FUNC1(nphone, "%s%c", card->s0num[0], phone[0]);
				return (nphone);
			} else
				return (&phone[FUNC3(phone) - 1]);
			break;
	}
	return "";
}