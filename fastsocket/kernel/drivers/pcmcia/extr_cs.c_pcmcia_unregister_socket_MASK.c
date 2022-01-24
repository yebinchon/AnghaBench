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
struct pcmcia_socket {int /*<<< orphan*/  socket_released; int /*<<< orphan*/  socket_list; scalar_t__ thread; int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcmcia_socket*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcmcia_socket_list_rwsem ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct pcmcia_socket *socket)
{
	if (!socket)
		return;

	FUNC0(socket, 0, "pcmcia_unregister_socket(0x%p)\n", socket->ops);

	if (socket->thread)
		FUNC2(socket->thread);

	FUNC4(socket);

	/* remove from our own list */
	FUNC1(&pcmcia_socket_list_rwsem);
	FUNC3(&socket->socket_list);
	FUNC6(&pcmcia_socket_list_rwsem);

	/* wait for sysfs to drop all references */
	FUNC5(socket);
	FUNC7(&socket->socket_released);
}