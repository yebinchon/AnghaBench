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
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct saa7110 {scalar_t__ norm; } ;

/* Variables and functions */
 int V4L2_IN_ST_NO_COLOR ; 
 int V4L2_IN_ST_NO_SIGNAL ; 
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct v4l2_subdev*) ; 
 struct saa7110* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int,unsigned long long) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, u32 *pstatus)
{
	struct saa7110 *decoder = FUNC1(sd);
	int res = V4L2_IN_ST_NO_SIGNAL;
	int status = FUNC0(sd);

	FUNC2(1, debug, sd, "status=0x%02x norm=%llx\n",
		       status, (unsigned long long)decoder->norm);
	if (!(status & 0x40))
		res = 0;
	if (!(status & 0x03))
		res |= V4L2_IN_ST_NO_COLOR;

	*pstatus = res;
	return 0;
}