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
 int FUNC7 () ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int FUNC10 () ; 
 int FUNC11 () ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 

__attribute__((used)) static int FUNC13(char* page, char** start, off_t offset, int count, int* eof, void* data)
{
        int len = 0;

        if (offset==0) {
                len += FUNC12(&page[len], "config1:   %#10.8x\n", FUNC4());
                len += FUNC12(&page[len], "config2:   %#10.8x\n", FUNC5());
                len += FUNC12(&page[len], "config3:   %#10.8x\n", FUNC6());
                len += FUNC12(&page[len], "configPR:  %#10.8x\n", FUNC7());
                len += FUNC12(&page[len], "status:    %#10.8x\n", FUNC11());
                len += FUNC12(&page[len], "cause:     %#10.8x\n", FUNC0());
                len += FUNC12(&page[len], "count:     %#10.8x\n", FUNC8());
                len += FUNC12(&page[len], "count_2:   %#10.8x\n", FUNC9());
                len += FUNC12(&page[len], "count_3:   %#10.8x\n", FUNC10());
                len += FUNC12(&page[len], "compare:   %#10.8x\n", FUNC1());
                len += FUNC12(&page[len], "compare_2: %#10.8x\n", FUNC2());
                len += FUNC12(&page[len], "compare_3: %#10.8x\n", FUNC3());
        }

        return len;
}