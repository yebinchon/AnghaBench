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
struct v4l2_requestbuffers {int dummy; } ;
struct front_face {int /*<<< orphan*/  q; } ;
struct file {struct front_face* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct front_face*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct v4l2_requestbuffers*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh,
				struct v4l2_requestbuffers *b)
{
	struct front_face *front = file->private_data;
	FUNC0(front);
	return FUNC1(&front->q, b);
}