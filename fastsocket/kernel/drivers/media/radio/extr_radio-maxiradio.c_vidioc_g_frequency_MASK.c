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
struct v4l2_frequency {int frequency; int /*<<< orphan*/  type; } ;
struct maxiradio {int freq; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct maxiradio*,int,char*,int,int) ; 
 struct maxiradio* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
			       struct v4l2_frequency *f)
{
	struct maxiradio *dev = FUNC1(file);

	f->type = V4L2_TUNER_RADIO;
	f->frequency = dev->freq;

	FUNC0(dev, 4, "radio freq is %d.%02d MHz",
				f->frequency / 16000,
				f->frequency % 16000 * 100 / 16000);

	return 0;
}