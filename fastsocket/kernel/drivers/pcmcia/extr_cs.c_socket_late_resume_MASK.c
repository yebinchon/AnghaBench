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
struct pcmcia_socket {int state; scalar_t__ resume_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_EVENT_CARD_INSERTION ; 
 int /*<<< orphan*/  CS_EVENT_PM_RESUME ; 
 int /*<<< orphan*/  CS_EVENT_PRI_LOW ; 
 int SOCKET_PRESENT ; 
 int SOCKET_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_socket*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_socket*) ; 
 scalar_t__ FUNC7 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC8(struct pcmcia_socket *skt)
{
	if (!(skt->state & SOCKET_PRESENT)) {
		skt->state &= ~SOCKET_SUSPEND;
		return FUNC4(skt);
	}

	if (skt->resume_status == 0) {
		/*
		 * FIXME: need a better check here for cardbus cards.
		 */
		if (FUNC7(skt) != 0) {
			FUNC0(skt, 4, "cis mismatch - different card\n");
			FUNC5(skt);
			FUNC1(skt);
			/*
			 * Workaround: give DS time to schedule removal.
			 * Remove me once the 100ms delay is eliminated
			 * in ds.c
			 */
			FUNC2(200);
			FUNC3(skt, CS_EVENT_CARD_INSERTION, CS_EVENT_PRI_LOW);
		} else {
			FUNC0(skt, 4, "cis matches cache\n");
			FUNC3(skt, CS_EVENT_PM_RESUME, CS_EVENT_PRI_LOW);
		}
	} else {
		FUNC6(skt);
	}

	skt->state &= ~SOCKET_SUSPEND;

	return 0;
}