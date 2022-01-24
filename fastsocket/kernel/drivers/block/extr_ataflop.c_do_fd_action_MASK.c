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
struct TYPE_4__ {int track; } ;
struct TYPE_3__ {int stretch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ IsFormatting ; 
 scalar_t__ READ ; 
 scalar_t__ ReqCmd ; 
 scalar_t__ ReqCnt ; 
 int /*<<< orphan*/  ReqData ; 
 int /*<<< orphan*/  ReqSector ; 
 int /*<<< orphan*/  ReqSide ; 
 int ReqTrack ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SelectedDrive ; 
 TYPE_2__ UD ; 
 TYPE_1__* UDT ; 
 scalar_t__ UseTrackbuffer ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fd_request ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13( int drive )
{
	FUNC0(("do_fd_action\n"));
	
	if (UseTrackbuffer && !IsFormatting) {
	repeat:
	    if (FUNC1( drive, ReqSide, ReqTrack )) {
		if (ReqCmd == READ) {
		    FUNC4( FUNC2(ReqSector), ReqData );
		    if (++ReqCnt < FUNC3(fd_request)) {
			/* read next sector */
			FUNC12( drive );
			goto repeat;
		    }
		    else {
			/* all sectors finished */
			FUNC6(0);
			FUNC11();
			return;
		    }
		}
		else {
		    /* cmd == WRITE, pay attention to track buffer
		     * consistency! */
		    FUNC4( ReqData, FUNC2(ReqSector) );
		}
	    }
	}

	if (SelectedDrive != drive)
		FUNC9( drive );
    
	if (UD.track == -1)
		FUNC5();
	else if (UD.track != ReqTrack << UDT->stretch)
		FUNC8();
	else if (IsFormatting)
		FUNC10();
	else
		FUNC7();
}