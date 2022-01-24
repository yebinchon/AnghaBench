#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct soc_pcmcia_socket {int nr; } ;
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ socket_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_PCMCIA_RESET ; 
 int /*<<< orphan*/  GPIO_PCMCIA_SKTSEL ; 
 int SS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct soc_pcmcia_socket *skt,
					  const socket_state_t *state)
{
	switch (skt->nr) {
	case 0:
		if (state->flags & SS_RESET) {
			FUNC0(GPIO_PCMCIA_SKTSEL, 0);
			FUNC1(1);
			FUNC0(GPIO_PCMCIA_RESET, 1);
			FUNC1(10);
			FUNC0(GPIO_PCMCIA_RESET, 0);
		}
		break;
	case 1:
		if (state->flags & SS_RESET) {
			FUNC0(GPIO_PCMCIA_SKTSEL, 1);
			FUNC1(1);
			FUNC0(GPIO_PCMCIA_RESET, 1);
			FUNC1(10);
			FUNC0(GPIO_PCMCIA_RESET, 0);
		}
		break;
	}

	return 0;
}