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
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_3__ {int* c; } ;
typedef  TYPE_1__ MetricomAddress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(MetricomAddress * addr, __u8 * p)
{
	if (!FUNC0(p))
		return (1);
	addr->c[0] = 0;
	addr->c[1] = 0;
	addr->c[2] = FUNC1(p[0]) << 4 | FUNC1(p[1]);
	addr->c[3] = FUNC1(p[2]) << 4 | FUNC1(p[3]);
	addr->c[4] = FUNC1(p[5]) << 4 | FUNC1(p[6]);
	addr->c[5] = FUNC1(p[7]) << 4 | FUNC1(p[8]);
	return (0);
}