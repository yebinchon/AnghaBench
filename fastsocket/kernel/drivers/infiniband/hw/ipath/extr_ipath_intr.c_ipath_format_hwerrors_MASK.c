#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct ipath_hwerror_msgs {int mask; int /*<<< orphan*/  msg; } ;
struct TYPE_3__ {int mask; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__* ipath_generic_hwerror_msgs ; 

void FUNC2(u64 hwerrs,
			   const struct ipath_hwerror_msgs *hwerrmsgs,
			   size_t nhwerrmsgs,
			   char *msg, size_t msgl)
{
	int i;
	const int glen =
	    FUNC0(ipath_generic_hwerror_msgs);

	for (i=0; i<glen; i++) {
		if (hwerrs & ipath_generic_hwerror_msgs[i].mask) {
			FUNC1(msg, msgl,
					   ipath_generic_hwerror_msgs[i].msg);
		}
	}

	for (i=0; i<nhwerrmsgs; i++) {
		if (hwerrs & hwerrmsgs[i].mask) {
			FUNC1(msg, msgl, hwerrmsgs[i].msg);
		}
	}
}