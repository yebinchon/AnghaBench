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
struct parport {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*,unsigned int) ; 

__attribute__((used)) static inline void FUNC2(struct parport *p,
					       unsigned int mask,
					       unsigned int val)
{
	unsigned int c;
	c = (FUNC0(p) & ~mask) ^ val;
	FUNC1(p, c);
}