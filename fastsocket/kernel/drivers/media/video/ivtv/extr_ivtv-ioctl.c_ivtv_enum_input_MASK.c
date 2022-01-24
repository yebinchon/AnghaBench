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
struct v4l2_input {int /*<<< orphan*/  index; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ivtv*,int /*<<< orphan*/ ,struct v4l2_input*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *fh, struct v4l2_input *vin)
{
	struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

	/* set it to defaults from our table */
	return FUNC0(itv, vin->index, vin);
}