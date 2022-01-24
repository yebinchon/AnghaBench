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
struct airo_info {int dummy; } ;
typedef  scalar_t__ __le16 ;
struct TYPE_3__ {scalar_t__ kindex; int* mac; } ;
typedef  TYPE_1__ WepKeyRid ;

/* Variables and functions */
 int SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct airo_info*,TYPE_1__*,int,int) ; 

__attribute__((used)) static int FUNC2(struct airo_info *ai)
{
	WepKeyRid wkr;
	int rc;
	__le16 lastindex;

	rc = FUNC1(ai, &wkr, 1, 1);
	if (rc != SUCCESS)
		return -1;
	do {
		lastindex = wkr.kindex;
		if (wkr.kindex == FUNC0(0xffff))
			return wkr.mac[0];
		rc = FUNC1(ai, &wkr, 0, 1);
		if (rc != SUCCESS)
			return -1;
	} while (lastindex != wkr.kindex);
	return -1;
}