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
struct TYPE_4__ {int Vcc; int Vpp; scalar_t__ flags; } ;
struct pcmcia_socket {int features; int /*<<< orphan*/  (* power_hook ) (struct pcmcia_socket*,int /*<<< orphan*/ ) ;TYPE_1__* ops; TYPE_2__ socket; int /*<<< orphan*/  state; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_status ) (struct pcmcia_socket*,int*) ;int /*<<< orphan*/  (* set_socket ) (struct pcmcia_socket*,TYPE_2__*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HOOK_POWER_POST ; 
 int /*<<< orphan*/  HOOK_POWER_PRE ; 
 int /*<<< orphan*/  SOCKET_CARDBUS ; 
 int SS_3VCARD ; 
 int SS_CAP_CARDBUS ; 
 int SS_CARDBUS ; 
 int SS_DETECT ; 
 int SS_PENDING ; 
 int SS_POWERON ; 
 int SS_XVCARD ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_socket*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_socket*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_socket*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_socket*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pcmcia_socket*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct pcmcia_socket*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct pcmcia_socket*,int /*<<< orphan*/ ) ; 
 int vcc_settle ; 

__attribute__((used)) static int FUNC10(struct pcmcia_socket *skt, int initial_delay)
{
	int status, i;

	FUNC0(skt, 4, "setup\n");

	skt->ops->get_status(skt, &status);
	if (!(status & SS_DETECT))
		return -ENODEV;

	FUNC2(initial_delay * 10);

	for (i = 0; i < 100; i++) {
		skt->ops->get_status(skt, &status);
		if (!(status & SS_DETECT))
			return -ENODEV;

		if (!(status & SS_PENDING))
			break;

		FUNC2(100);
	}

	if (status & SS_PENDING) {
		FUNC1(skt, "voltage interrogation timed out.\n");
		return -ETIMEDOUT;
	}

	if (status & SS_CARDBUS) {
		if (!(skt->features & SS_CAP_CARDBUS)) {
			FUNC1(skt, "cardbus cards are not supported.\n");
			return -EINVAL;
		}
		skt->state |= SOCKET_CARDBUS;
	}

	/*
	 * Decode the card voltage requirements, and apply power to the card.
	 */
	if (status & SS_3VCARD)
		skt->socket.Vcc = skt->socket.Vpp = 33;
	else if (!(status & SS_XVCARD))
		skt->socket.Vcc = skt->socket.Vpp = 50;
	else {
		FUNC1(skt, "unsupported voltage key.\n");
		return -EIO;
	}

	if (skt->power_hook)
		skt->power_hook(skt, HOOK_POWER_PRE);

	skt->socket.flags = 0;
	skt->ops->set_socket(skt, &skt->socket);

	/*
	 * Wait "vcc_settle" for the supply to stabilise.
	 */
	FUNC2(vcc_settle * 10);

	skt->ops->get_status(skt, &status);
	if (!(status & SS_POWERON)) {
		FUNC1(skt, "unable to apply power.\n");
		return -EIO;
	}

	status = FUNC3(skt);

	if (skt->power_hook)
		skt->power_hook(skt, HOOK_POWER_POST);

	return status;
}