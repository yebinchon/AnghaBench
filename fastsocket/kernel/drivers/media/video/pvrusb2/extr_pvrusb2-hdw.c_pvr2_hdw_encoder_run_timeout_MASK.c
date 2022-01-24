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
struct pvr2_hdw {int state_encoder_runok; int state_stale; int /*<<< orphan*/  workpoll; int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct pvr2_hdw *hdw = (struct pvr2_hdw *)data;
	if (!hdw->state_encoder_runok) {
		hdw->state_encoder_runok = !0;
		FUNC1("state_encoder_runok",hdw->state_encoder_runok);
		hdw->state_stale = !0;
		FUNC0(hdw->workqueue,&hdw->workpoll);
	}
}