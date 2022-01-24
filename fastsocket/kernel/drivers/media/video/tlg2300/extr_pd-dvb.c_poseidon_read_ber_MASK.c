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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  tlg_ber ;
struct tuner_ber_rate_s {int /*<<< orphan*/  ber_rate; } ;
struct poseidon {int /*<<< orphan*/  lock; } ;
struct dvb_frontend {struct poseidon* demodulator_priv; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  TUNER_BER_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct poseidon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tuner_ber_rate_s*,int*,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, u32 *ber)
{
	struct poseidon *pd = fe->demodulator_priv;
	struct tuner_ber_rate_s tlg_ber = {};
	s32 ret = -1, cmd_status;

	FUNC0(&pd->lock);
	ret = FUNC2(pd, TUNER_BER_RATE, 0,
				&tlg_ber, &cmd_status, sizeof(tlg_ber));
	if (ret | cmd_status)
		goto out;
	*ber = tlg_ber.ber_rate;
out:
	FUNC1(&pd->lock);
	return ret;
}