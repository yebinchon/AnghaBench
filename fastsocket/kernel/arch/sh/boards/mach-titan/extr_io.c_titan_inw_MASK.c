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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (unsigned long) ; 

u16 FUNC4(unsigned long port)
{
        if (FUNC0(port))
                return FUNC1(port);
        else if (port >= 0x2000)
                return FUNC1(FUNC3(port));
        else
                FUNC2(port);
        return 0;
}