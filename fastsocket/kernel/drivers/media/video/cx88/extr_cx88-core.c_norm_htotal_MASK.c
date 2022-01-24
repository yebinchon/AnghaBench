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
typedef  int v4l2_std_id ;

/* Variables and functions */
 int V4L2_STD_625_50 ; 
 int FUNC0 (int) ; 

__attribute__((used)) static unsigned int inline FUNC1(v4l2_std_id norm)
{

	unsigned int fsc4=FUNC0(norm)/2;

	/* returns 4*FSC / vtotal / frames per seconds */
	return (norm & V4L2_STD_625_50) ?
				((fsc4+312)/625+12)/25 :
				((fsc4+262)/525*1001+15000)/30000;
}