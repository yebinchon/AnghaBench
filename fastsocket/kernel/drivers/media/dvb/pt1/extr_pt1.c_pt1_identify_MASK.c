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
typedef  int u64 ;
struct pt1 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt1*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u64 FUNC2(struct pt1 *pt1)
{
	int i;
	u64 id;
	id = 0;
	for (i = 0; i < 57; i++) {
		id |= (u64)(FUNC0(pt1, 0) >> 30 & 1) << i;
		FUNC1(pt1, 0, 0x00000008);
	}
	return id;
}