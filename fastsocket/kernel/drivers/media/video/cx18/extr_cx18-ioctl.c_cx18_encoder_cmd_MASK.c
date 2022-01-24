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
struct v4l2_encoder_cmd {int cmd; int flags; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  i_flags; int /*<<< orphan*/  ana_capturing; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX18_CPU_CAPTURE_PAUSE ; 
 int /*<<< orphan*/  CX18_CPU_CAPTURE_RESUME ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  CX18_F_I_ENC_PAUSED ; 
 int /*<<< orphan*/  CX18_INVALID_TASK_HANDLE ; 
 int EBADFD ; 
 int EINVAL ; 
 int EPERM ; 
#define  V4L2_ENC_CMD_PAUSE 131 
#define  V4L2_ENC_CMD_RESUME 130 
#define  V4L2_ENC_CMD_START 129 
#define  V4L2_ENC_CMD_STOP 128 
 int V4L2_ENC_CMD_STOP_AT_GOP_END ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18*) ; 
 int FUNC5 (struct cx18_open_id*) ; 
 int /*<<< orphan*/  FUNC6 (struct cx18_open_id*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC8 (struct cx18*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct file *file, void *fh,
				struct v4l2_encoder_cmd *enc)
{
	struct cx18_open_id *id = fh;
	struct cx18 *cx = id->cx;
	u32 h;

	switch (enc->cmd) {
	case V4L2_ENC_CMD_START:
		FUNC0("V4L2_ENC_CMD_START\n");
		enc->flags = 0;
		return FUNC5(id);

	case V4L2_ENC_CMD_STOP:
		FUNC0("V4L2_ENC_CMD_STOP\n");
		enc->flags &= V4L2_ENC_CMD_STOP_AT_GOP_END;
		FUNC6(id,
				  enc->flags & V4L2_ENC_CMD_STOP_AT_GOP_END);
		break;

	case V4L2_ENC_CMD_PAUSE:
		FUNC0("V4L2_ENC_CMD_PAUSE\n");
		enc->flags = 0;
		if (!FUNC2(&cx->ana_capturing))
			return -EPERM;
		if (FUNC10(CX18_F_I_ENC_PAUSED, &cx->i_flags))
			return 0;
		h = FUNC3(cx);
		if (h == CX18_INVALID_TASK_HANDLE) {
			FUNC1("Can't find valid task handle for "
				 "V4L2_ENC_CMD_PAUSE\n");
			return -EBADFD;
		}
		FUNC4(cx);
		FUNC8(cx, CX18_CPU_CAPTURE_PAUSE, 1, h);
		break;

	case V4L2_ENC_CMD_RESUME:
		FUNC0("V4L2_ENC_CMD_RESUME\n");
		enc->flags = 0;
		if (!FUNC2(&cx->ana_capturing))
			return -EPERM;
		if (!FUNC9(CX18_F_I_ENC_PAUSED, &cx->i_flags))
			return 0;
		h = FUNC3(cx);
		if (h == CX18_INVALID_TASK_HANDLE) {
			FUNC1("Can't find valid task handle for "
				 "V4L2_ENC_CMD_RESUME\n");
			return -EBADFD;
		}
		FUNC8(cx, CX18_CPU_CAPTURE_RESUME, 1, h);
		FUNC7(cx);
		break;

	default:
		FUNC0("Unknown cmd %d\n", enc->cmd);
		return -EINVAL;
	}
	return 0;
}