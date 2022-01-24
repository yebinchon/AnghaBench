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
 unsigned char CFAG12864B_ADDRESSES ; 
 unsigned char CFAG12864B_PAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned char i, j;

	FUNC2(1, 1);
	for (i = 0; i < CFAG12864B_PAGES; i++) {
		FUNC1(i);
		FUNC0(0);
		for (j = 0; j < CFAG12864B_ADDRESSES; j++)
			FUNC3(0);
	}
}