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
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (char*,char*,...) ; 

__attribute__((used)) static int FUNC8(char* page, char** start, off_t offset, int count, int* eof, void* data)
{
        int len = 0;
	int configPR = FUNC3();

        if (offset==0) {
		len += FUNC7(&page[len], "Timer:       count,  compare, tc, status\n");
                len += FUNC7(&page[len], "    1: %11i, %8i,  %1i, %s\n",
			       FUNC4(), FUNC0(),
			      (configPR>>6)&0x1, ((configPR>>3)&0x1)? "off":"on");
                len += FUNC7(&page[len], "    2: %11i, %8i,  %1i, %s\n",
			       FUNC5(), FUNC1(),
			      (configPR>>7)&0x1, ((configPR>>4)&0x1)? "off":"on");
                len += FUNC7(&page[len], "    3: %11i, %8i,  %1i, %s\n",
			       FUNC6(), FUNC2(),
			      (configPR>>8)&0x1, ((configPR>>5)&0x1)? "off":"on");
        }

        return len;
}