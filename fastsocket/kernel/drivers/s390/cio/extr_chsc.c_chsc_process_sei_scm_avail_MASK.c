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
struct chsc_sei_area {int rs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct chsc_sei_area *sei_area)
{
	int ret;

	FUNC0(4, "chsc: scm available information\n");
	if (sei_area->rs != 7)
		return;

	ret = FUNC1();
	if (ret)
		FUNC0(0, "chsc: process availability information"
			      " failed (rc=%d).\n", ret);
}