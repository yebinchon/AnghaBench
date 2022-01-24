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
struct video_data {int /*<<< orphan*/  bubble_work; } ;
struct poseidon {scalar_t__ cur_transfer_mode; struct video_data video_data; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLAY_SERVICE ; 
 int /*<<< orphan*/  TAKE_REQUEST ; 
 int /*<<< orphan*/  TLG_TUNE_PLAY_SVC_START ; 
 int /*<<< orphan*/  FUNC1 (struct video_data*) ; 
 int /*<<< orphan*/  iso_bubble_handler ; 
 int /*<<< orphan*/  FUNC2 (struct video_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct video_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct poseidon*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct poseidon *pd)
{
	struct video_data *video = &pd->video_data;
	s32 cmd_status;

	FUNC4(pd, TAKE_REQUEST, 0, &cmd_status);
	FUNC4(pd, PLAY_SERVICE, TLG_TUNE_PLAY_SVC_START, &cmd_status);

	if (pd->cur_transfer_mode) {
		FUNC3(video);
		FUNC0(&video->bubble_work, iso_bubble_handler);
	} else {
		/* The bulk mode does not need a bubble handler */
		FUNC2(video);
	}
	FUNC1(video);
	return 0;
}