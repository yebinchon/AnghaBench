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
struct rsxx_cardinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_CMD_SHUTDOWN ; 
 unsigned int CARD_STATE_SHUTDOWN ; 
 unsigned int CARD_STATE_SHUTTING_DOWN ; 
 unsigned int CARD_STATE_STARTING ; 
 int ETIMEDOUT ; 
 long jiffies ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct rsxx_cardinfo*,unsigned int*) ; 
 int FUNC2 (struct rsxx_cardinfo*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rsxx_cardinfo *card)
{
	unsigned int state;
	signed long start;
	const int timeout = FUNC0(120000);
	int st;

	/* We can't issue a shutdown if the card is in a transition state */
	start = jiffies;
	do {
		st = FUNC1(card, &state);
		if (st)
			return st;
	} while (state == CARD_STATE_STARTING &&
		 (jiffies - start < timeout));

	if (state == CARD_STATE_STARTING)
		return -ETIMEDOUT;

	/* Only issue a shutdown if we need to */
	if ((state != CARD_STATE_SHUTTING_DOWN) &&
	    (state != CARD_STATE_SHUTDOWN)) {
		st = FUNC2(card, CARD_CMD_SHUTDOWN);
		if (st)
			return st;
	}

	start = jiffies;
	do {
		st = FUNC1(card, &state);
		if (st)
			return st;
	} while (state != CARD_STATE_SHUTDOWN &&
		 (jiffies - start < timeout));

	if (state != CARD_STATE_SHUTDOWN)
		return -ETIMEDOUT;

	return 0;
}