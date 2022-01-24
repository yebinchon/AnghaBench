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
struct v4l2_buffer {int dummy; } ;
struct file {int f_flags; } ;
struct bttv_fh {int dummy; } ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct bttv_fh*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct v4l2_buffer*,int) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv, struct v4l2_buffer *b)
{
	struct bttv_fh *fh = priv;
	return FUNC1(FUNC0(fh), b,
			file->f_flags & O_NONBLOCK);
}