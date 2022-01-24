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
struct r5conf {int max_nr_stripes; } ;
struct mddev {struct r5conf* private; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct r5conf*) ; 
 scalar_t__ FUNC1 (struct r5conf*) ; 
 int FUNC2 (struct mddev*) ; 

int
FUNC3(struct mddev *mddev, int size)
{
	struct r5conf *conf = mddev->private;
	int err;

	if (size <= 16 || size > 32768)
		return -EINVAL;
	while (size < conf->max_nr_stripes) {
		if (FUNC0(conf))
			conf->max_nr_stripes--;
		else
			break;
	}
	err = FUNC2(mddev);
	if (err)
		return err;
	while (size > conf->max_nr_stripes) {
		if (FUNC1(conf))
			conf->max_nr_stripes++;
		else break;
	}
	return 0;
}