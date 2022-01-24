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
struct multipath {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kmpath_handlerd ; 
 int /*<<< orphan*/  kmultipathd ; 
 int /*<<< orphan*/  FUNC2 (struct multipath*) ; 

__attribute__((used)) static void FUNC3(struct multipath *m)
{
	FUNC1(kmpath_handlerd);
	FUNC2(m);
	FUNC1(kmultipathd);
	FUNC0();
}