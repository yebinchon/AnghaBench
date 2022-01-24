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
struct v4l2_subdev {int dummy; } ;
struct saa717x_state {int /*<<< orphan*/  std; scalar_t__ radio; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 struct saa717x_state* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, v4l2_std_id std)
{
	struct saa717x_state *decoder = FUNC0(sd);

	FUNC1(1, debug, sd, "decoder set norm ");
	FUNC1(1, debug, sd, "(not yet implementd)\n");

	decoder->radio = 0;
	decoder->std = std;
	return 0;
}