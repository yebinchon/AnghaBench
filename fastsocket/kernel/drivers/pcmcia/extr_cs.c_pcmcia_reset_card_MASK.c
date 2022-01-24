#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_socket {int state; int /*<<< orphan*/  skt_mutex; TYPE_1__* callback; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* resume ) (struct pcmcia_socket*) ;int /*<<< orphan*/  (* suspend ) (struct pcmcia_socket*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CS_EVENT_CARD_RESET ; 
 int /*<<< orphan*/  CS_EVENT_PRI_LOW ; 
 int /*<<< orphan*/  CS_EVENT_RESET_PHYSICAL ; 
 int /*<<< orphan*/  CS_EVENT_RESET_REQUEST ; 
 int EBUSY ; 
 int ENODEV ; 
 int EPERM ; 
 int SOCKET_CARDBUS ; 
 int SOCKET_PRESENT ; 
 int SOCKET_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_socket*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_socket*) ; 

int FUNC7(struct pcmcia_socket *skt)
{
	int ret;

	FUNC0(skt, 1, "resetting socket\n");

	FUNC1(&skt->skt_mutex);
	do {
		if (!(skt->state & SOCKET_PRESENT)) {
			ret = -ENODEV;
			break;
		}
		if (skt->state & SOCKET_SUSPEND) {
			ret = -EBUSY;
			break;
		}
		if (skt->state & SOCKET_CARDBUS) {
			ret = -EPERM;
			break;
		}

		ret = FUNC3(skt, CS_EVENT_RESET_REQUEST, CS_EVENT_PRI_LOW);
		if (ret == 0) {
			FUNC3(skt, CS_EVENT_RESET_PHYSICAL, CS_EVENT_PRI_LOW);
			if (skt->callback)
				skt->callback->suspend(skt);
			if (FUNC4(skt) == 0) {
				FUNC3(skt, CS_EVENT_CARD_RESET, CS_EVENT_PRI_LOW);
				if (skt->callback)
					skt->callback->resume(skt);
			}
		}

		ret = 0;
	} while (0);
	FUNC2(&skt->skt_mutex);

	return ret;
}