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
struct uvd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC1 (struct uvd*,int /*<<< orphan*/ ,unsigned short,int) ; 

__attribute__((used)) static void FUNC2(struct uvd *uvd, unsigned short v1, unsigned short v2)
{
	FUNC1(uvd, 0, 0x00aa, 0x012d);
	FUNC1(uvd, 0, 0x00ff, 0x012e);
	FUNC1(uvd, 0, v1,     0x012f);
	FUNC1(uvd, 0, 0x00ff, 0x0130);
	FUNC1(uvd, 0, 0xc719, 0x0124);
	FUNC1(uvd, 0, v2,     0x0127);

	FUNC0(uvd);
}