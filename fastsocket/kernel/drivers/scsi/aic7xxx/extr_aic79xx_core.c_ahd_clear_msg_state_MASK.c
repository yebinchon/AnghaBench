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
struct ahd_softc {int /*<<< orphan*/  msg_type; scalar_t__ msgin_index; scalar_t__ msgout_len; int /*<<< orphan*/  msg_flags; scalar_t__ send_msg_perror; } ;
typedef  int /*<<< orphan*/  ahd_mode_state ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int ATNO ; 
 int CLRATNO ; 
 int /*<<< orphan*/  CLRSINT1 ; 
 int /*<<< orphan*/  MSG_FLAG_NONE ; 
 int MSG_NOOP ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int /*<<< orphan*/  MSG_TYPE_NONE ; 
 int /*<<< orphan*/  SCSISIGO ; 
 int /*<<< orphan*/  SEQ_FLAGS2 ; 
 int TARGET_MSG_PENDING ; 
 int FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ahd_softc *ahd)
{
	ahd_mode_state saved_modes;

	saved_modes = FUNC3(ahd);
	FUNC4(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	ahd->send_msg_perror = 0;
	ahd->msg_flags = MSG_FLAG_NONE;
	ahd->msgout_len = 0;
	ahd->msgin_index = 0;
	ahd->msg_type = MSG_TYPE_NONE;
	if ((FUNC0(ahd, SCSISIGO) & ATNO) != 0) {
		/*
		 * The target didn't care to respond to our
		 * message request, so clear ATN.
		 */
		FUNC1(ahd, CLRSINT1, CLRATNO);
	}
	FUNC1(ahd, MSG_OUT, MSG_NOOP);
	FUNC1(ahd, SEQ_FLAGS2,
		 FUNC0(ahd, SEQ_FLAGS2) & ~TARGET_MSG_PENDING);
	FUNC2(ahd, saved_modes);
}