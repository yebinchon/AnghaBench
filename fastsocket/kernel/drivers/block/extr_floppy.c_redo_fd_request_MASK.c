#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct request {int /*<<< orphan*/  errors; TYPE_1__* rq_disk; } ;
struct TYPE_12__ {int* autodetect; } ;
struct TYPE_11__ {size_t probed_format; } ;
struct TYPE_10__ {int /*<<< orphan*/  queue_lock; } ;
struct TYPE_9__ {scalar_t__ flags; } ;
struct TYPE_8__ {scalar_t__ private_data; } ;

/* Variables and functions */
 TYPE_7__* DP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_6__* DRS ; 
 int /*<<< orphan*/  FD_DISK_CHANGED ; 
 int /*<<< orphan*/  FD_NEED_TWADDLE ; 
 scalar_t__ N_DRIVE ; 
 int /*<<< orphan*/  REPEAT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * _floppy ; 
 struct request* FUNC2 (TYPE_3__*) ; 
 scalar_t__ current_drive ; 
 struct request* current_req ; 
 int /*<<< orphan*/  current_reqD ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__ default_raw_cmd ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * do_floppy ; 
 int /*<<< orphan*/ * errors ; 
 int /*<<< orphan*/  fake_change ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_3__* floppy_queue ; 
 int /*<<< orphan*/  floppy_start ; 
 int /*<<< orphan*/ * floppy_type ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  lastredo ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int probing ; 
 TYPE_2__* raw_cmd ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (void (*) ()) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static void FUNC19(void)
{
#define REPEAT {request_done(0); continue; }
	int drive;
	int tmp;

	lastredo = jiffies;
	if (current_drive < N_DRIVE)
		FUNC5(current_drive);

	for (;;) {
		if (!current_req) {
			struct request *req;

			FUNC13(floppy_queue->queue_lock);
			req = FUNC2(floppy_queue);
			FUNC14(floppy_queue->queue_lock);
			if (!req) {
				do_floppy = NULL;
				FUNC18();
				return;
			}
			current_req = req;
		}
		drive = (long)current_req->rq_disk->private_data;
		FUNC11(drive);
		FUNC9(current_reqD, "redo fd request", 0);

		FUNC12(drive);
		raw_cmd = &default_raw_cmd;
		raw_cmd->flags = 0;
		if (FUNC15(redo_fd_request))
			return;
		FUNC4(current_drive);
		if (FUNC16(current_drive, &fake_change) ||
		    FUNC1(FD_DISK_CHANGED)) {
			FUNC0("disk absent or changed during operation\n");
			REPEAT;
		}
		if (!_floppy) {	/* Autodetection */
			if (!probing) {
				DRS->probed_format = 0;
				if (FUNC7()) {
					FUNC0("no autodetectable formats\n");
					_floppy = NULL;
					REPEAT;
				}
			}
			probing = 1;
			_floppy =
			    floppy_type + DP->autodetect[DRS->probed_format];
		} else
			probing = 0;
		errors = &(current_req->errors);
		tmp = FUNC6();
		if (tmp < 2) {
			FUNC8(tmp);
			continue;
		}

		if (FUNC1(FD_NEED_TWADDLE))
			FUNC17();
		FUNC10(floppy_start);
		FUNC3("queue fd request");
		return;
	}
#undef REPEAT
}