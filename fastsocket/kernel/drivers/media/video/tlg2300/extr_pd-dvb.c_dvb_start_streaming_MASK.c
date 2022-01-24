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
struct poseidon {int state; int /*<<< orphan*/  lock; } ;
struct pd_dvb_adapter {int is_streaming; int /*<<< orphan*/ * urb_array; struct poseidon* pd_device; } ;
typedef  int s32 ;

/* Variables and functions */
 int DVB_SBUF_NUM ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PLAY_SERVICE ; 
 int POSEIDON_STATE_DISCONNECT ; 
 int FUNC0 (struct pd_dvb_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct poseidon*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC6(struct pd_dvb_adapter *pd_dvb)
{
	struct poseidon *pd = pd_dvb->pd_device;
	int ret = 0;

	if (pd->state & POSEIDON_STATE_DISCONNECT)
		return -ENODEV;

	FUNC2(&pd->lock);
	if (!pd_dvb->is_streaming) {
		s32 i, cmd_status = 0;
		/*
		 * Once upon a time, there was a difficult bug lying here.
		 * ret = send_set_req(pd, TAKE_REQUEST, 0, &cmd_status);
		 */

		ret = FUNC4(pd, PLAY_SERVICE, 1, &cmd_status);
		if (ret | cmd_status)
			goto out;

		ret = FUNC0(pd_dvb);
		if (ret < 0)
			goto out;

		pd_dvb->is_streaming = 1;
		for (i = 0; i < DVB_SBUF_NUM; i++) {
			ret = FUNC5(pd_dvb->urb_array[i],
						       GFP_KERNEL);
			if (ret) {
				FUNC1(" submit urb error %d", ret);
				goto out;
			}
		}
	}
out:
	FUNC3(&pd->lock);
	return ret;
}