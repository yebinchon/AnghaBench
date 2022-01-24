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
struct pcmcia_socket {int state; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int SOCKET_INUSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct pcmcia_socket *skt)
{
	int ret;

	FUNC0(skt->state & SOCKET_INUSE);

	ret = FUNC1(skt->owner);
	if (ret)
		skt->state |= SOCKET_INUSE;
	return ret;
}