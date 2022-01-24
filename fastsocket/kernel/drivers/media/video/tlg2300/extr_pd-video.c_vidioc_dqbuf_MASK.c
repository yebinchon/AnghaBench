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
struct front_face {int /*<<< orphan*/  q; } ;
struct file {int f_flags; struct front_face* private_data; } ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int FUNC0 (int /*<<< orphan*/ *,struct v4l2_buffer*,int) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *fh, struct v4l2_buffer *b)
{
	struct front_face *front = file->private_data;
	return FUNC0(&front->q, b, file->f_flags & O_NONBLOCK);
}