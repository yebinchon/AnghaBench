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
struct maxiradio {int freq; int /*<<< orphan*/  lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FREQ_HI ; 
 int FREQ_LO ; 
 int /*<<< orphan*/  FUNC0 (struct maxiradio*,int,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct maxiradio*,int) ; 
 struct maxiradio* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
			       struct v4l2_frequency *f)
{
	struct maxiradio *dev = FUNC5(file);

	if (f->frequency < FREQ_LO || f->frequency > FREQ_HI) {
		FUNC0(dev, 1, "radio freq (%d.%02d MHz) out of range (%d-%d)\n",
					f->frequency / 16000,
					f->frequency % 16000 * 100 / 16000,
					FREQ_LO / 16000, FREQ_HI / 16000);

		return -EINVAL;
	}

	FUNC2(&dev->lock);
	dev->freq = f->frequency;
	FUNC4(dev, dev->freq);
	FUNC1(125);
	FUNC3(&dev->lock);

	return 0;
}