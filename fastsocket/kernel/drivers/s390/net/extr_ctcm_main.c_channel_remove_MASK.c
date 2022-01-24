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
struct channel {struct channel* next; struct channel* irb; struct channel* ccw; struct channel* discontact_th; int /*<<< orphan*/  ch_disc_tasklet; int /*<<< orphan*/  ch_tasklet; int /*<<< orphan*/ * trans_skb; int /*<<< orphan*/  fsm; int /*<<< orphan*/  sweep_timer; int /*<<< orphan*/  timer; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int /*<<< orphan*/  CTCM_ID_SIZE ; 
 int /*<<< orphan*/  CTC_DBF_INFO ; 
 scalar_t__ FUNC1 (struct channel*) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC2 (struct channel*) ; 
 struct channel* channels ; 
 int /*<<< orphan*/  FUNC3 (struct channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct channel*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct channel *ch)
{
	struct channel **c = &channels;
	char chid[CTCM_ID_SIZE+1];
	int ok = 0;

	if (ch == NULL)
		return;
	else
		FUNC8(chid, ch->id, CTCM_ID_SIZE);

	FUNC2(ch);
	while (*c) {
		if (*c == ch) {
			*c = ch->next;
			FUNC5(&ch->timer);
			if (FUNC1(ch))
				FUNC5(&ch->sweep_timer);

			FUNC7(ch->fsm);
			FUNC3(&ch->ccw[4]);
			if (ch->trans_skb != NULL) {
				FUNC3(&ch->ccw[1]);
				FUNC4(ch->trans_skb);
			}
			if (FUNC1(ch)) {
				FUNC9(&ch->ch_tasklet);
				FUNC9(&ch->ch_disc_tasklet);
				FUNC6(ch->discontact_th);
			}
			FUNC6(ch->ccw);
			FUNC6(ch->irb);
			FUNC6(ch);
			ok = 1;
			break;
		}
		c = &((*c)->next);
	}

	FUNC0(SETUP, CTC_DBF_INFO, "%s(%s) %s", CTCM_FUNTAIL,
			chid, ok ? "OK" : "failed");
}