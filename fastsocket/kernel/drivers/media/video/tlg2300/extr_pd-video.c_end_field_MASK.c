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
struct video_data {int field_count; int /*<<< orphan*/  front; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct video_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct video_data *video)
{
	/* logs(video->front); */
	if (1 == video->field_count)
		FUNC1(video->front);
	else
		FUNC0(video, 1);
}