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
struct file {struct cx18_open_id* private_data; } ;
struct cx18_stream {scalar_t__ type; int /*<<< orphan*/  name; struct cx18* cx; } ;
struct cx18_open_id {scalar_t__ type; scalar_t__ open_id; int /*<<< orphan*/  prio; struct cx18* cx; } ;
struct cx18 {int /*<<< orphan*/  i_flags; int /*<<< orphan*/  ana_capturing; int /*<<< orphan*/  open_id; int /*<<< orphan*/  prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ CX18_ENC_STREAM_TYPE_RAD ; 
 int /*<<< orphan*/  CX18_F_I_RADIO_USER ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct cx18_open_id*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC7 (struct cx18_stream*) ; 
 int /*<<< orphan*/  FUNC8 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC9 (struct cx18_open_id*) ; 
 struct cx18_open_id* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_radio ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tuner ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct cx18_stream *s, struct file *filp)
{
	struct cx18 *cx = s->cx;
	struct cx18_open_id *item;

	FUNC0("open %s\n", s->name);

	/* Allocate memory */
	item = FUNC10(sizeof(struct cx18_open_id), GFP_KERNEL);
	if (NULL == item) {
		FUNC1("nomem on v4l2 open\n");
		return -ENOMEM;
	}
	item->cx = cx;
	item->type = s->type;
	FUNC13(&cx->prio, &item->prio);

	item->open_id = cx->open_id++;
	filp->private_data = item;

	if (item->type == CX18_ENC_STREAM_TYPE_RAD) {
		/* Try to claim this stream */
		if (FUNC5(item, item->type)) {
			/* No, it's already in use */
			FUNC9(item);
			return -EBUSY;
		}

		if (!FUNC12(CX18_F_I_RADIO_USER, &cx->i_flags)) {
			if (FUNC2(&cx->ana_capturing) > 0) {
				/* switching to radio while capture is
				   in progress is not polite */
				FUNC7(s);
				FUNC9(item);
				return -EBUSY;
			}
		}

		/* Mark that the radio is being used. */
		FUNC11(CX18_F_I_RADIO_USER, &cx->i_flags);
		/* We have the radio */
		FUNC6(cx);
		/* Switch tuner to radio */
		FUNC4(cx, tuner, s_radio);
		/* Select the correct audio input (i.e. radio tuner) */
		FUNC3(cx);
		/* Done! Unmute and continue. */
		FUNC8(cx);
	}
	return 0;
}