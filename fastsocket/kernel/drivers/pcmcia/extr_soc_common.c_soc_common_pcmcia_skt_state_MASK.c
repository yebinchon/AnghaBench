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
struct TYPE_4__ {int flags; scalar_t__ Vcc; } ;
struct soc_pcmcia_socket {TYPE_2__ cs_state; TYPE_1__* ops; } ;
struct pcmcia_state {scalar_t__ bvd1; scalar_t__ bvd2; scalar_t__ vs_Xv; scalar_t__ vs_3v; scalar_t__ wrprot; scalar_t__ ready; scalar_t__ detect; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* socket_state ) (struct soc_pcmcia_socket*,struct pcmcia_state*) ;} ;

/* Variables and functions */
 unsigned int SS_3VCARD ; 
 unsigned int SS_BATDEAD ; 
 unsigned int SS_BATWARN ; 
 unsigned int SS_DETECT ; 
 int SS_IOCARD ; 
 unsigned int SS_POWERON ; 
 unsigned int SS_READY ; 
 unsigned int SS_STSCHG ; 
 unsigned int SS_WRPROT ; 
 unsigned int SS_XVCARD ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct soc_pcmcia_socket*,struct pcmcia_state*) ; 

__attribute__((used)) static unsigned int FUNC2(struct soc_pcmcia_socket *skt)
{
	struct pcmcia_state state;
	unsigned int stat;

	FUNC0(&state, 0, sizeof(struct pcmcia_state));

	skt->ops->socket_state(skt, &state);

	stat = state.detect  ? SS_DETECT : 0;
	stat |= state.ready  ? SS_READY  : 0;
	stat |= state.wrprot ? SS_WRPROT : 0;
	stat |= state.vs_3v  ? SS_3VCARD : 0;
	stat |= state.vs_Xv  ? SS_XVCARD : 0;

	/* The power status of individual sockets is not available
	 * explicitly from the hardware, so we just remember the state
	 * and regurgitate it upon request:
	 */
	stat |= skt->cs_state.Vcc ? SS_POWERON : 0;

	if (skt->cs_state.flags & SS_IOCARD)
		stat |= state.bvd1 ? SS_STSCHG : 0;
	else {
		if (state.bvd1 == 0)
			stat |= SS_BATDEAD;
		else if (state.bvd2 == 0)
			stat |= SS_BATWARN;
	}
	return stat;
}