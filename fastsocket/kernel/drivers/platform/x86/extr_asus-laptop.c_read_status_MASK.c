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
struct TYPE_2__ {int status; } ;

/* Variables and functions */
 int BT_ON ; 
 int GPS_ON ; 
 int WL_ON ; 
 TYPE_1__* hotk ; 
 int FUNC0 () ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(int mask)
{
	/* There is a special method for both wireless devices */
	if (mask == BT_ON || mask == WL_ON)
		return FUNC1(mask);
	else if (mask == GPS_ON)
		return FUNC0();

	return (hotk->status & mask) ? 1 : 0;
}