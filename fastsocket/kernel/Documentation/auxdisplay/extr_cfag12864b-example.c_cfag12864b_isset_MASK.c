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
 size_t FUNC0 (unsigned char,unsigned char) ; 
 int FUNC1 (unsigned char) ; 
 unsigned char CFAG12864B_BPB ; 
 scalar_t__ FUNC2 (unsigned char,unsigned char) ; 
 int* cfag12864b_buffer ; 

__attribute__((used)) static unsigned char FUNC3(unsigned char x, unsigned char y)
{
	if (FUNC2(x, y))
		if (cfag12864b_buffer[FUNC0(x, y)] &
			FUNC1(x % CFAG12864B_BPB))
			return 1;

	return 0;
}