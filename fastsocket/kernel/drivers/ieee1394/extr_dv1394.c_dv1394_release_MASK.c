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
struct video_card {int /*<<< orphan*/  open; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct video_card*,int) ; 
 struct video_card* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct video_card *video = FUNC2(file);

	/* OK to free the DMA buffer, no more mappings can exist */
	FUNC1(video, 1);

	/* give someone else a turn */
	FUNC0(0, &video->open);

	return 0;
}