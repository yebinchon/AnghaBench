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
struct pd_dvb_adapter {size_t bandwidth; int prev_freq; int /*<<< orphan*/  last_jiffies; int /*<<< orphan*/  fe_param; } ;
struct poseidon {int /*<<< orphan*/  lock; struct pd_dvb_adapter dvb_data; } ;
struct TYPE_3__ {scalar_t__ bandwidth; } ;
struct TYPE_4__ {TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {int frequency; TYPE_2__ u; } ;
struct dvb_frontend {struct poseidon* demodulator_priv; } ;
typedef  size_t s32 ;

/* Variables and functions */
 int /*<<< orphan*/  DVBT_BANDW_SEL ; 
 int EBUSY ; 
 int /*<<< orphan*/  TAKE_REQUEST ; 
 int /*<<< orphan*/  TUNE_FREQ_SELECT ; 
 scalar_t__ FUNC0 (int,size_t,struct pd_dvb_adapter*) ; 
 scalar_t__** dvb_bandwidth ; 
 size_t dvb_bandwidth_length ; 
 scalar_t__ FUNC1 (struct poseidon*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct dvb_frontend_parameters*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (struct poseidon*,int /*<<< orphan*/ ,size_t,size_t*) ; 

__attribute__((used)) static int FUNC7(struct dvb_frontend *fe,
			struct dvb_frontend_parameters *fep)
{
	s32 ret = 0, cmd_status = 0;
	s32 i, bandwidth = -1;
	struct poseidon *pd = fe->demodulator_priv;
	struct pd_dvb_adapter *pd_dvb = &pd->dvb_data;

	if (FUNC1(pd))
		return -EBUSY;

	FUNC4(&pd->lock);
	for (i = 0; i < dvb_bandwidth_length; i++)
		if (fep->u.ofdm.bandwidth == dvb_bandwidth[i][1])
			bandwidth = dvb_bandwidth[i][0];

	if (FUNC0(fep->frequency, bandwidth, pd_dvb)) {
		ret = FUNC6(pd, TUNE_FREQ_SELECT,
					fep->frequency / 1000, &cmd_status);
		if (ret | cmd_status) {
			FUNC2("error line");
			goto front_out;
		}

		ret = FUNC6(pd, DVBT_BANDW_SEL,
						bandwidth, &cmd_status);
		if (ret | cmd_status) {
			FUNC2("error line");
			goto front_out;
		}

		ret = FUNC6(pd, TAKE_REQUEST, 0, &cmd_status);
		if (ret | cmd_status) {
			FUNC2("error line");
			goto front_out;
		}

		/* save the context for future */
		FUNC3(&pd_dvb->fe_param, fep, sizeof(*fep));
		pd_dvb->bandwidth = bandwidth;
		pd_dvb->prev_freq = fep->frequency;
		pd_dvb->last_jiffies = jiffies;
	}
front_out:
	FUNC5(&pd->lock);
	return ret;
}