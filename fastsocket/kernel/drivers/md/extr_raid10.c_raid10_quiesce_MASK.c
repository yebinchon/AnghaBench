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
struct r10conf {int dummy; } ;
struct mddev {struct r10conf* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r10conf*) ; 
 int /*<<< orphan*/  FUNC1 (struct r10conf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mddev *mddev, int state)
{
	struct r10conf *conf = mddev->private;

	switch(state) {
	case 1:
		FUNC1(conf, 0);
		break;
	case 0:
		FUNC0(conf);
		break;
	}
}