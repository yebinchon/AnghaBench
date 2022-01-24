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
struct usb_stv {size_t scratch_use; scalar_t__ nullpackets; TYPE_2__* scratch; TYPE_1__* frame; int /*<<< orphan*/  wq; scalar_t__ streaming; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {scalar_t__ grabstate; int /*<<< orphan*/  curpix; } ;

/* Variables and functions */
 scalar_t__ BUFFER_BUSY ; 
 scalar_t__ BUFFER_READY ; 
 scalar_t__ BUFFER_UNUSED ; 
 int EIO ; 
 scalar_t__ FRAME_ERROR ; 
 scalar_t__ FRAME_GRABBING ; 
 scalar_t__ FRAME_READY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int STV680_MAX_ERRORS ; 
 scalar_t__ STV680_MAX_NULLPACKETS ; 
 size_t STV680_NUMSCRATCH ; 
 int /*<<< orphan*/  FUNC1 (struct usb_stv*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_stv*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_stv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5 (struct usb_stv *stv680, int framenr)
{
	int errors = 0;

	while (stv680->streaming && (stv680->frame[framenr].grabstate == FRAME_READY || stv680->frame[framenr].grabstate == FRAME_GRABBING)) {
		if (!stv680->frame[framenr].curpix) {
			errors++;
		}
		FUNC4 (stv680->wq, (stv680->scratch[stv680->scratch_use].state == BUFFER_READY));

		if (stv680->nullpackets > STV680_MAX_NULLPACKETS) {
			stv680->nullpackets = 0;
			FUNC0 (2, "STV(i): too many null length packets, restarting capture");
			FUNC3 (stv680);
			FUNC2 (stv680);
		} else {
			if (stv680->scratch[stv680->scratch_use].state != BUFFER_READY) {
				stv680->frame[framenr].grabstate = FRAME_ERROR;
				FUNC0 (2, "STV(e): FRAME_ERROR in _newframe");
				return -EIO;
			}
			stv680->scratch[stv680->scratch_use].state = BUFFER_BUSY;

			FUNC1 (stv680, &stv680->scratch[stv680->scratch_use]);

			stv680->scratch[stv680->scratch_use].state = BUFFER_UNUSED;
			stv680->scratch_use++;
			if (stv680->scratch_use >= STV680_NUMSCRATCH)
				stv680->scratch_use = 0;
			if (errors > STV680_MAX_ERRORS) {
				errors = 0;
				FUNC0 (2, "STV(i): too many errors, restarting capture");
				FUNC3 (stv680);
				FUNC2 (stv680);
			}
		}		/* else */
	}			/* while */
	return 0;
}