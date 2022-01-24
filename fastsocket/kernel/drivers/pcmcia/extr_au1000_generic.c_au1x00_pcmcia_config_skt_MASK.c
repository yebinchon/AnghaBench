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
struct au1000_pcmcia_socket {int /*<<< orphan*/  nr; int /*<<< orphan*/  cs_state; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  socket_state_t ;
struct TYPE_2__ {int (* configure_socket ) (struct au1000_pcmcia_socket*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct au1000_pcmcia_socket*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct au1000_pcmcia_socket *skt, socket_state_t *state)
{
	int ret;

	ret = skt->ops->configure_socket(skt, state);
	if (ret == 0) {
		skt->cs_state = *state;
	}

	if (ret < 0)
		FUNC0("unable to configure socket %d\n", skt->nr);

	return ret;
}