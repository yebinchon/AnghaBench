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

/* Variables and functions */
 int PVC_NLINES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * pvc_lines ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	int i;

	FUNC0();
	for (i = 0; i < PVC_NLINES; i++)
		FUNC1(pvc_lines[i], 0, i);
}