#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* rch; int /*<<< orphan*/  isdnloop_lock; struct TYPE_5__** rcard; } ;
typedef  TYPE_1__ isdnloop_card ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 char* FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC5(isdnloop_card * card, int ch)
{
	unsigned long flags;
	char buf[60];

	FUNC2(&card->isdnloop_lock, flags);
	if (card->rcard) {
		FUNC0(card->rcard[ch], "DDIS_I", card->rch[ch] + 1);
		card->rcard[ch]->rcard[card->rch[ch]] = NULL;
		card->rcard[ch] = NULL;
	}
	FUNC0(card, "DDIS_I", ch + 1);
	/* No user responding */
	FUNC4(buf, "CAU%s", FUNC1(card, 1, 3));
	FUNC0(card, buf, ch + 1);
	FUNC3(&card->isdnloop_lock, flags);
}