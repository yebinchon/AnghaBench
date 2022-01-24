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
 unsigned long WAITnexttimeout ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline short FUNC2(unsigned port, unsigned mask, unsigned allof, unsigned noneof)
{
	unsigned WAITbits;
	unsigned long WAITtimeout = jiffies + WAITnexttimeout;

	while (FUNC1(jiffies, WAITtimeout)) {
		WAITbits = FUNC0(port) & mask;

		if (((WAITbits & allof) == allof) && ((WAITbits & noneof) == 0))
			return (0);
	}

	return (1);
}