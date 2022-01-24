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
typedef  int /*<<< orphan*/  vrc4173_socket_t ;
typedef  int uint8_t ;
struct TYPE_3__ {int Vpp; int Vcc; int flags; } ;
typedef  TYPE_1__ socket_state_t ;

/* Variables and functions */
 int CARD_OUT_EN ; 
 int CARD_REST0 ; 
 int CARD_TYPE_IO ; 
 int EINVAL ; 
 int /*<<< orphan*/  INT_GEN_CNT ; 
 int /*<<< orphan*/  PWR_CNT ; 
 int SS_IOCARD ; 
 int SS_OUTPUT_ENA ; 
 int SS_RESET ; 
 int /*<<< orphan*/ * cardu_sockets ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(unsigned int sock, socket_state_t *state)
{
	vrc4173_socket_t *socket = &cardu_sockets[sock];
	uint8_t val;

	if (((state->Vpp == 33) || (state->Vpp == 50)) && (state->Vpp != state->Vcc))
			return -EINVAL;

	val = FUNC2(state->Vcc);
	val |= FUNC3(state->Vpp);
	if (state->flags & SS_OUTPUT_ENA) val |= CARD_OUT_EN;
	FUNC1(socket, PWR_CNT, val);

	val = FUNC0(socket, INT_GEN_CNT) & CARD_REST0;
	if (state->flags & SS_RESET) val &= ~CARD_REST0;
	else val |= CARD_REST0;
	if (state->flags & SS_IOCARD) val |= CARD_TYPE_IO;
	FUNC1(socket, INT_GEN_CNT, val);

	return 0;
}