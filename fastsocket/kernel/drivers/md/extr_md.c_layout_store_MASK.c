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
struct mddev {unsigned long new_layout; unsigned long layout; scalar_t__ reshape_position; TYPE_1__* pers; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* check_reshape ) (struct mddev*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ MaxSector ; 
 unsigned long FUNC0 (char const*,char**,int) ; 
 int FUNC1 (struct mddev*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct mddev *mddev, const char *buf, size_t len)
{
	char *e;
	unsigned long n = FUNC0(buf, &e, 10);

	if (!*buf || (*e && *e != '\n'))
		return -EINVAL;

	if (mddev->pers) {
		int err;
		if (mddev->pers->check_reshape == NULL)
			return -EBUSY;
		mddev->new_layout = n;
		err = mddev->pers->check_reshape(mddev);
		if (err) {
			mddev->new_layout = mddev->layout;
			return err;
		}
	} else {
		mddev->new_layout = n;
		if (mddev->reshape_position == MaxSector)
			mddev->layout = n;
	}
	return len;
}