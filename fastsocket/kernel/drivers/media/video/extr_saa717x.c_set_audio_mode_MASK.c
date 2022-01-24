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
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/ ** reg_set_audio_template ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static void FUNC2(struct v4l2_subdev *sd, int audio_mode)
{
	FUNC1(1, debug, sd, "writing registers to set audio mode by set %d\n",
			audio_mode);

	FUNC0(sd, 0x46c, reg_set_audio_template[audio_mode][0]);
	FUNC0(sd, 0x470, reg_set_audio_template[audio_mode][1]);
}