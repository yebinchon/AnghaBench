#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* expires; } ;
struct pvr2_hdw {int state_decoder_run; int state_decoder_quiescent; int state_decoder_ready; scalar_t__ pathway_state; scalar_t__ decoder_client_id; TYPE_1__ decoder_stabilization_timer; scalar_t__ flag_decoder_missed; TYPE_1__ quiescent_timer; scalar_t__ state_encoder_ok; int /*<<< orphan*/  state_encoder_config; int /*<<< orphan*/  state_pipeline_config; scalar_t__ state_pipeline_pause; scalar_t__ state_pipeline_req; scalar_t__ state_pathway_ok; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ PVR2_CLIENT_ID_SAA7115 ; 
 scalar_t__ PVR2_PATHWAY_ANALOG ; 
 int TIME_MSEC_DECODER_STABILIZATION_WAIT ; 
 int TIME_MSEC_DECODER_WAIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* jiffies ; 
 scalar_t__ FUNC2 (struct pvr2_hdw*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(struct pvr2_hdw *hdw)
{
	if (hdw->state_decoder_run) {
		if (hdw->state_encoder_ok) {
			if (hdw->state_pipeline_req &&
			    !hdw->state_pipeline_pause &&
			    hdw->state_pathway_ok) return 0;
		}
		if (!hdw->flag_decoder_missed) {
			FUNC2(hdw,0);
		}
		hdw->state_decoder_quiescent = 0;
		hdw->state_decoder_run = 0;
		/* paranoia - solve race if timer(s) just completed */
		FUNC1(&hdw->quiescent_timer);
		/* Kill the stabilization timer, in case we're killing the
		   encoder before the previous stabilization interval has
		   been properly timed. */
		FUNC1(&hdw->decoder_stabilization_timer);
		hdw->state_decoder_ready = 0;
	} else {
		if (!hdw->state_decoder_quiescent) {
			if (!FUNC3(&hdw->quiescent_timer)) {
				/* We don't do something about the
				   quiescent timer until right here because
				   we also want to catch cases where the
				   decoder was already not running (like
				   after initialization) as opposed to
				   knowing that we had just stopped it.
				   The second flag check is here to cover a
				   race - the timer could have run and set
				   this flag just after the previous check
				   but before we did the pending check. */
				if (!hdw->state_decoder_quiescent) {
					hdw->quiescent_timer.expires =
						jiffies +
						(HZ * TIME_MSEC_DECODER_WAIT
						 / 1000);
					FUNC0(&hdw->quiescent_timer);
				}
			}
			/* Don't allow decoder to start again until it has
			   been quiesced first.  This little detail should
			   hopefully further stabilize the encoder. */
			return 0;
		}
		if (!hdw->state_pathway_ok ||
		    (hdw->pathway_state != PVR2_PATHWAY_ANALOG) ||
		    !hdw->state_pipeline_req ||
		    hdw->state_pipeline_pause ||
		    !hdw->state_pipeline_config ||
		    !hdw->state_encoder_config ||
		    !hdw->state_encoder_ok) return 0;
		FUNC1(&hdw->quiescent_timer);
		if (hdw->flag_decoder_missed) return 0;
		if (FUNC2(hdw,!0) < 0) return 0;
		hdw->state_decoder_quiescent = 0;
		hdw->state_decoder_ready = 0;
		hdw->state_decoder_run = !0;
		if (hdw->decoder_client_id == PVR2_CLIENT_ID_SAA7115) {
			hdw->decoder_stabilization_timer.expires =
				jiffies +
				(HZ * TIME_MSEC_DECODER_STABILIZATION_WAIT /
				 1000);
			FUNC0(&hdw->decoder_stabilization_timer);
		} else {
			hdw->state_decoder_ready = !0;
		}
	}
	FUNC4("state_decoder_quiescent",hdw->state_decoder_quiescent);
	FUNC4("state_decoder_run",hdw->state_decoder_run);
	FUNC4("state_decoder_ready", hdw->state_decoder_ready);
	return !0;
}