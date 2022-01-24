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
typedef  int u32 ;
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
	int i, j;
	u32 status;
	status = FUNC1(pt1, 0) & 0x00000004;
	FUNC2(pt1, 0, 0x00000002);
	for (i = 0; i < 10; i++) {
		for (j = 0; j < 1024; j++) {
			if ((FUNC1(pt1, 0) & 0x00000004) != status)
				return 0;
		}
		FUNC3((HZ + 999) / 1000);
	}
	FUNC0(KERN_ERR, pt1, "could not enable RAM\n");
	return -EIO;
}