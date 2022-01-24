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
struct zr36050 {int /*<<< orphan*/  status1; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct zr36050*) ; 

__attribute__((used)) static void
FUNC3 (struct zr36050 *ptr)
{
	int i = 0;

	while (!(FUNC2(ptr) & 0x4)) {
		FUNC1(1);
		if (i++ > 200000) {	// 200ms, there is for sure something wrong!!!
			FUNC0(1,
				"%s: timeout at wait_end (last status: 0x%02x)\n",
				ptr->name, ptr->status1);
			break;
		}
	}
}