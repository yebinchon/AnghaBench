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
struct bttv {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ bttv_gpio ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,char*) ; 
 unsigned int bttv_num ; 
 struct bttv** bttvs ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

int FUNC2(unsigned int card, unsigned long mask, unsigned long data)
{
	struct bttv *btv;

	if (card >= bttv_num) {
		return -EINVAL;
	}

	btv = bttvs[card];
	if (!btv)
		return -ENODEV;

	FUNC1(mask,data);
	if (bttv_gpio)
		FUNC0(btv,"extern enable");
	return 0;
}