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
struct v4l2_dbg_chip_ident {int /*<<< orphan*/  revision; int /*<<< orphan*/  ident; int /*<<< orphan*/  match; } ;
struct cx18_av_state {int /*<<< orphan*/  rev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct cx18_av_state* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
				struct v4l2_dbg_chip_ident *chip)
{
	struct cx18_av_state *state = FUNC1(sd);

	if (FUNC0(&chip->match)) {
		chip->ident = state->id;
		chip->revision = state->rev;
	}
	return 0;
}