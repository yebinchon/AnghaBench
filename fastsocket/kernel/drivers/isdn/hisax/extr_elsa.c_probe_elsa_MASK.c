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
struct IsdnCardState {int /*<<< orphan*/  typ; int /*<<< orphan*/  subtyp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC1(struct IsdnCardState *cs)
{
	int i;
	unsigned int CARD_portlist[] =
	{0x160, 0x170, 0x260, 0x360, 0};

	for (i = 0; CARD_portlist[i]; i++) {
		if ((cs->subtyp = FUNC0(CARD_portlist[i], cs->typ)))
			break;
	}
	return (CARD_portlist[i]);
}