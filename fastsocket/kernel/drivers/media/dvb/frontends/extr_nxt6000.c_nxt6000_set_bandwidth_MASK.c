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
typedef  int u16 ;
struct nxt6000_state {int dummy; } ;
typedef  int fe_bandwidth_t ;

/* Variables and functions */
#define  BANDWIDTH_6_MHZ 130 
#define  BANDWIDTH_7_MHZ 129 
#define  BANDWIDTH_8_MHZ 128 
 int EINVAL ; 
 int /*<<< orphan*/  OFDM_TRL_NOMINALRATE_1 ; 
 int /*<<< orphan*/  OFDM_TRL_NOMINALRATE_2 ; 
 int FUNC0 (struct nxt6000_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct nxt6000_state* state, fe_bandwidth_t bandwidth)
{
	u16 nominal_rate;
	int result;

	switch (bandwidth) {

	case BANDWIDTH_6_MHZ:
		nominal_rate = 0x55B7;
		break;

	case BANDWIDTH_7_MHZ:
		nominal_rate = 0x6400;
		break;

	case BANDWIDTH_8_MHZ:
		nominal_rate = 0x7249;
		break;

	default:
		return -EINVAL;
	}

	if ((result = FUNC0(state, OFDM_TRL_NOMINALRATE_1, nominal_rate & 0xFF)) < 0)
		return result;

	return FUNC0(state, OFDM_TRL_NOMINALRATE_2, (nominal_rate >> 8) & 0xFF);
}