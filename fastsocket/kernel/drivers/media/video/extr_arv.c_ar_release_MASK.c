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
struct video_device {int dummy; } ;
struct ar_device {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct video_device*) ; 
 struct ar_device* FUNC2 (struct video_device*) ; 

void FUNC3(struct video_device *vfd)
{
	struct ar_device *ar = FUNC2(vfd);
	FUNC0(&ar->lock);
	FUNC1(vfd);
}