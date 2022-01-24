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
typedef  int uint64_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  celleb_vtermno ; 

__attribute__((used)) static void FUNC1(char c)
{
	unsigned long rc;

	if (c == '\n')
		FUNC1('\r');

	rc = FUNC0(celleb_vtermno, 1, (uint64_t)c << 56, 0);
}