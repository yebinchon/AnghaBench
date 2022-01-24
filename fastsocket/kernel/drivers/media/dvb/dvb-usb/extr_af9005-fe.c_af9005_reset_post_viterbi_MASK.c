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
struct dvb_frontend {struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {int /*<<< orphan*/  d; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fec_rsd_ber_rst_len ; 
 int /*<<< orphan*/  fec_rsd_ber_rst_pos ; 
 int /*<<< orphan*/  xd_p_fec_rsd_ber_rst ; 
 int /*<<< orphan*/  xd_p_fec_rsd_packet_unit_15_8 ; 
 int /*<<< orphan*/  xd_p_fec_rsd_packet_unit_7_0 ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe)
{
	struct af9005_fe_state *state = fe->demodulator_priv;
	int ret;

	/* set packet unit */
	ret =
	    FUNC0(state->d, xd_p_fec_rsd_packet_unit_7_0,
				       10000 & 0xff);
	if (ret)
		return ret;
	ret =
	    FUNC0(state->d, xd_p_fec_rsd_packet_unit_15_8,
				       10000 >> 8);
	if (ret)
		return ret;
	/* reset post viterbi error count */
	ret =
	    FUNC1(state->d, xd_p_fec_rsd_ber_rst,
				       fec_rsd_ber_rst_pos, fec_rsd_ber_rst_len,
				       1);

	return ret;
}