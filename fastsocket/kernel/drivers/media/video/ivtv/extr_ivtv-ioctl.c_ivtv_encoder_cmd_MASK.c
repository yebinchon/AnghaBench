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
struct v4l2_encoder_cmd {int cmd; int flags; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int /*<<< orphan*/  i_flags; int /*<<< orphan*/  capturing; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_ENC_PAUSE_ENCODER ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IVTV_F_I_ENC_PAUSED ; 
#define  V4L2_ENC_CMD_PAUSE 131 
#define  V4L2_ENC_CMD_RESUME 130 
#define  V4L2_ENC_CMD_START 129 
#define  V4L2_ENC_CMD_STOP 128 
 int V4L2_ENC_CMD_STOP_AT_GOP_END ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv*) ; 
 int FUNC3 (struct ivtv_open_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv_open_id*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct file *file, void *fh, struct v4l2_encoder_cmd *enc)
{
	struct ivtv_open_id *id = fh;
	struct ivtv *itv = id->itv;


	switch (enc->cmd) {
	case V4L2_ENC_CMD_START:
		FUNC0("V4L2_ENC_CMD_START\n");
		enc->flags = 0;
		return FUNC3(id);

	case V4L2_ENC_CMD_STOP:
		FUNC0("V4L2_ENC_CMD_STOP\n");
		enc->flags &= V4L2_ENC_CMD_STOP_AT_GOP_END;
		FUNC4(id, enc->flags & V4L2_ENC_CMD_STOP_AT_GOP_END);
		return 0;

	case V4L2_ENC_CMD_PAUSE:
		FUNC0("V4L2_ENC_CMD_PAUSE\n");
		enc->flags = 0;

		if (!FUNC1(&itv->capturing))
			return -EPERM;
		if (FUNC8(IVTV_F_I_ENC_PAUSED, &itv->i_flags))
			return 0;

		FUNC2(itv);
		FUNC6(itv, CX2341X_ENC_PAUSE_ENCODER, 1, 0);
		break;

	case V4L2_ENC_CMD_RESUME:
		FUNC0("V4L2_ENC_CMD_RESUME\n");
		enc->flags = 0;

		if (!FUNC1(&itv->capturing))
			return -EPERM;

		if (!FUNC7(IVTV_F_I_ENC_PAUSED, &itv->i_flags))
			return 0;

		FUNC6(itv, CX2341X_ENC_PAUSE_ENCODER, 1, 1);
		FUNC5(itv);
		break;
	default:
		FUNC0("Unknown cmd %d\n", enc->cmd);
		return -EINVAL;
	}

	return 0;
}