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
struct ioc3 {int dummy; } ;

/* Variables and functions */
 int FUNC0 () ; 

__attribute__((used)) static int FUNC1(struct ioc3 *ioc3)
{
	u32 mcr;

        do {
                mcr = FUNC0();
        } while (!(mcr & 2));

        return mcr & 1;
}