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
struct v4l2_frequency {int /*<<< orphan*/  frequency; int /*<<< orphan*/  type; } ;
struct file {int dummy; } ;
struct aztech {int /*<<< orphan*/  curfreq; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 struct aztech* FUNC0 (struct file*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv,
				struct v4l2_frequency *f)
{
	struct aztech *az = FUNC0(file);

	f->type = V4L2_TUNER_RADIO;
	f->frequency = az->curfreq;
	return 0;
}