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
typedef  int /*<<< orphan*/  v4l2_std_id ;
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct bt819 {int dummy; } ;

/* Variables and functions */
 int V4L2_IN_ST_NO_SIGNAL ; 
 int /*<<< orphan*/  V4L2_STD_NTSC ; 
 int /*<<< orphan*/  V4L2_STD_PAL ; 
 int FUNC0 (struct bt819*,int) ; 
 int /*<<< orphan*/  debug ; 
 struct bt819* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, u32 *pstatus, v4l2_std_id *pstd)
{
	struct bt819 *decoder = FUNC1(sd);
	int status = FUNC0(decoder, 0x00);
	int res = V4L2_IN_ST_NO_SIGNAL;
	v4l2_std_id std;

	if ((status & 0x80))
		res = 0;

	if ((status & 0x10))
		std = V4L2_STD_PAL;
	else
		std = V4L2_STD_NTSC;
	if (pstd)
		*pstd = std;
	if (pstatus)
		*pstatus = status;

	FUNC2(1, debug, sd, "get status %x\n", status);
	return 0;
}