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
typedef  int u8 ;
struct dst_state {scalar_t__ dst_type; int* tx_tuna; } ;

/* Variables and functions */
 scalar_t__ DST_TYPE_IS_SAT ; 
 int EOPNOTSUPP ; 
 int FUNC0 (int*,int) ; 
 int FUNC1 (struct dst_state*,int*,int) ; 

__attribute__((used)) static int FUNC2(struct dst_state *state)
{
	u8 paket[8] = { 0x00, 0x09, 0xff, 0xff, 0x01, 0x00, 0x00, 0x00 };

	if (state->dst_type != DST_TYPE_IS_SAT)
		return -EOPNOTSUPP;
	paket[4] = state->tx_tuna[4];
	paket[2] = state->tx_tuna[2];
	paket[3] = state->tx_tuna[3];
	paket[7] = FUNC0 (paket, 7);
	return FUNC1(state, paket, 8);
}