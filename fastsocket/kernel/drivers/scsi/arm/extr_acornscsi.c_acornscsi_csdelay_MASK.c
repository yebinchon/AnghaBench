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
 unsigned int HZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 

__attribute__((used)) static void
FUNC5(unsigned int cs)
{
    unsigned long target_jiffies, flags;

    target_jiffies = jiffies + 1 + cs * HZ / 100;

    FUNC3(flags);
    FUNC1();

    while (FUNC4(jiffies, target_jiffies)) FUNC0();

    FUNC2(flags);
}