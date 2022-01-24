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
struct pcmcia_socket {int state; int /*<<< orphan*/  sock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_EVENT_CARD_INSERTION ; 
 int /*<<< orphan*/  CS_EVENT_PRI_LOW ; 
 int ENODEV ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int SOCKET_CARDBUS ; 
 int SOCKET_CARDBUS_CONFIG ; 
 int SOCKET_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_socket*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setup_delay ; 
 int FUNC5 (struct pcmcia_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC7(struct pcmcia_socket *skt)
{
	int ret;

	FUNC1(skt, 4, "insert\n");

	if (!FUNC2(skt))
		return -ENODEV;

	ret = FUNC5(skt, setup_delay);
	if (ret == 0) {
		skt->state |= SOCKET_PRESENT;

		FUNC3(KERN_NOTICE, &skt->dev,
			   "pccard: %s card inserted into slot %d\n",
			   (skt->state & SOCKET_CARDBUS) ? "CardBus" : "PCMCIA",
			   skt->sock);

#ifdef CONFIG_CARDBUS
		if (skt->state & SOCKET_CARDBUS) {
			cb_alloc(skt);
			skt->state |= SOCKET_CARDBUS_CONFIG;
		}
#endif
		FUNC1(skt, 4, "insert done\n");

		FUNC4(skt, CS_EVENT_CARD_INSERTION, CS_EVENT_PRI_LOW);
	} else {
		FUNC6(skt);
	}

	return ret;
}