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
struct pd_unit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pd_unit*,int) ; 

__attribute__((used)) static void FUNC2(struct pd_unit *disk)
{				/* called only for MASTER drive */
	FUNC1(disk, 4);
	FUNC0(50);
	FUNC1(disk, 0);
	FUNC0(250);
}