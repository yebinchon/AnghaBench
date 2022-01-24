#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ tallies32; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*,int) ; 

__attribute__((used)) static void FUNC2(local_info_t *local, unsigned char *buf,
				    int left)
{
	if (local->tallies32)
		FUNC1(local, buf, left);
	else
		FUNC0(local, buf, left);
}