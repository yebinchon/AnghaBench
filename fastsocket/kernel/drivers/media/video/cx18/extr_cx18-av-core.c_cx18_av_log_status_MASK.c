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
struct cx18 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*) ; 
 struct cx18* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd)
{
	struct cx18 *cx = FUNC2(sd);
	FUNC1(cx);
	FUNC0(cx);
	return 0;
}