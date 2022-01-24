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
struct soc_pcmcia_socket {int dummy; } ;
struct pcmcia_state {int detect; int ready; int bvd1; int bvd2; scalar_t__ wrprot; scalar_t__ vs_Xv; scalar_t__ vs_3v; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_PCMCIA_S0_CD_VALID ; 
 int /*<<< orphan*/  GPIO_PCMCIA_S0_RDYINT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct soc_pcmcia_socket *skt,
				       struct pcmcia_state *state)
{
	state->detect = (FUNC0(GPIO_PCMCIA_S0_CD_VALID) == 0) ? 1 : 0;
	state->ready  = (FUNC0(GPIO_PCMCIA_S0_RDYINT) == 0) ? 0 : 1;
	state->bvd1   = 1;
	state->bvd2   = 1;
	state->vs_3v  = 0;
	state->vs_Xv  = 0;
	state->wrprot = 0;  /* not available */
}