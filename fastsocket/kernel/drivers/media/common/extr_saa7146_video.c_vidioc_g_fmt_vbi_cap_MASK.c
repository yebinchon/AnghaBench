#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  vbi; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct saa7146_fh {int /*<<< orphan*/  vbi_fmt; } ;
struct file {int dummy; } ;

/* Variables and functions */

__attribute__((used)) static int FUNC0(struct file *file, void *fh, struct v4l2_format *f)
{
	f->fmt.vbi = ((struct saa7146_fh *)fh)->vbi_fmt;
	return 0;
}