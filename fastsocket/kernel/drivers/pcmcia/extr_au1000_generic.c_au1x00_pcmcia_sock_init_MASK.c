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
struct pcmcia_socket {int dummy; } ;
struct au1000_pcmcia_socket {TYPE_1__* ops; int /*<<< orphan*/  nr; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* socket_init ) (struct au1000_pcmcia_socket*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct au1000_pcmcia_socket*) ; 
 struct au1000_pcmcia_socket* FUNC2 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC3(struct pcmcia_socket *sock)
{
	struct au1000_pcmcia_socket *skt = FUNC2(sock);

	FUNC0("initializing socket %u\n", skt->nr);

	skt->ops->socket_init(skt);
	return 0;
}