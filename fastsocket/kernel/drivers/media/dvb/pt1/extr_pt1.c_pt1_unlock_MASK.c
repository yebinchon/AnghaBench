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
struct pt1 {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int HZ ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pt1*,char*) ; 
 int FUNC1 (struct pt1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt1*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct pt1 *pt1)
{
	int i;
	FUNC2(pt1, 0, 0x00000008);
	for (i = 0; i < 3; i++) {
		if (FUNC1(pt1, 0) & 0x80000000)
			return 0;
		FUNC3((HZ + 999) / 1000);
	}
	FUNC0(KERN_ERR, pt1, "could not unlock\n");
	return -EIO;
}