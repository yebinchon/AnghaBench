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
struct video_data {int dummy; } ;
struct front_face {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct front_face*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct video_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct front_face *front, struct video_data *video)
{
	int need_init = 0;
	bool ret = true;

	ret = FUNC0(front, &need_init);
	if (ret && need_init)
		FUNC1(video, 0);
	return ret;
}