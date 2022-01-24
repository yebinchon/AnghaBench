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
struct pcmcia_socket {int state; int /*<<< orphan*/  skt_mutex; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int SOCKET_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_socket*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pcmcia_socket*) ; 

int FUNC4(struct pcmcia_socket *skt)
{
	int ret;

	FUNC0(skt, 1, "user insert request\n");

	FUNC1(&skt->skt_mutex);
	do {
		if (skt->state & SOCKET_PRESENT) {
			ret = -EBUSY;
			break;
		}
		if (FUNC3(skt) == -ENODEV) {
			ret = -ENODEV;
			break;
		}
		ret = 0;
	} while (0);
	FUNC2(&skt->skt_mutex);

	return ret;
}