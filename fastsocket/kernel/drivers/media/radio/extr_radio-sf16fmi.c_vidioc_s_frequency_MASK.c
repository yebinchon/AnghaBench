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
struct v4l2_frequency {int frequency; } ;
struct fmi {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int RSF16_MAXFREQ ; 
 int RSF16_MINFREQ ; 
 int /*<<< orphan*/  FUNC0 (struct fmi*,int) ; 
 struct fmi* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
					struct v4l2_frequency *f)
{
	struct fmi *fmi = FUNC1(file);

	if (f->frequency < RSF16_MINFREQ ||
			f->frequency > RSF16_MAXFREQ)
		return -EINVAL;
	/* rounding in steps of 800 to match the freq
	   that will be used */
	FUNC0(fmi, (f->frequency / 800) * 800);
	return 0;
}