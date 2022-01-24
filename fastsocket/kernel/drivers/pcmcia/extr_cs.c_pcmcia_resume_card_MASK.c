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
struct TYPE_2__ {int /*<<< orphan*/  (* resume ) (struct pcmcia_socket*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int EPERM ; 
 int SOCKET_CARDBUS ; 
 int SOCKET_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_socket*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_socket*) ; 

int FUNC5(struct pcmcia_socket *skt)
{
	int ret;
    
	FUNC0(skt, 1, "waking up socket\n");

	FUNC1(&skt->skt_mutex);
	do {
		if (!(skt->state & SOCKET_PRESENT)) {
			ret = -ENODEV;
			break;
		}
		if (skt->state & SOCKET_CARDBUS) {
			ret = -EPERM;
			break;
		}
		ret = FUNC3(skt);
		if (!ret && skt->callback)
			skt->callback->resume(skt);
	} while (0);
	FUNC2(&skt->skt_mutex);

	return ret;
}