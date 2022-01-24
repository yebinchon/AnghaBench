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
typedef  int /*<<< orphan*/  u8 ;
struct v4l2_subdev {int dummy; } ;
struct tvp514x_reg {scalar_t__ token; scalar_t__ val; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 scalar_t__ TOK_DELAY ; 
 scalar_t__ TOK_SKIP ; 
 scalar_t__ TOK_TERM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
			      const struct tvp514x_reg reglist[])
{
	int err;
	const struct tvp514x_reg *next = reglist;

	for (; next->token != TOK_TERM; next++) {
		if (next->token == TOK_DELAY) {
			FUNC0(next->val);
			continue;
		}

		if (next->token == TOK_SKIP)
			continue;

		err = FUNC1(sd, next->reg, (u8) next->val);
		if (err) {
			FUNC2(sd, "Write failed. Err[%d]\n", err);
			return err;
		}
	}
	return 0;
}