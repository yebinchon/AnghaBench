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
struct pcmcia_socket {struct bcm63xx_pcmcia_socket* driver_data; } ;
struct bcm63xx_pcmcia_socket {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct bcm63xx_pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct pcmcia_socket *sock,
				     unsigned int *status)
{
	struct bcm63xx_pcmcia_socket *skt;

	skt = sock->driver_data;

	FUNC1(&skt->lock);
	*status = FUNC0(skt);
	FUNC2(&skt->lock);

	return 0;
}