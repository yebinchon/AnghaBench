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
struct tuner_dtv_sig_stat_s {int sig_strength; scalar_t__ sig_locked; scalar_t__ sig_present; } ;
struct poseidon {int /*<<< orphan*/  lock; } ;
struct dvb_frontend {struct poseidon* demodulator_priv; } ;
typedef  int /*<<< orphan*/  status ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  TLG_MODE_DVB_T ; 
 int /*<<< orphan*/  TUNER_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct poseidon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tuner_dtv_sig_stat_s*,int*,int) ; 

__attribute__((used)) static s32 FUNC3(struct dvb_frontend *fe, u16 *strength)
{
	struct poseidon *pd = fe->demodulator_priv;
	struct tuner_dtv_sig_stat_s status = {};
	s32 ret = 0, cmd_status;

	FUNC0(&pd->lock);
	ret = FUNC2(pd, TUNER_STATUS, TLG_MODE_DVB_T,
				&status, &cmd_status, sizeof(status));
	if (ret | cmd_status)
		goto out;
	if ((status.sig_present || status.sig_locked) && !status.sig_strength)
		*strength = 0xFFFF;
	else
		*strength = status.sig_strength;
out:
	FUNC1(&pd->lock);
	return ret;
}