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
 int /*<<< orphan*/  FUNC0 (struct parport*,unsigned char,unsigned int const) ; 
 unsigned int DCR_AUTOFD ; 
 unsigned int DCR_SELECT ; 
 unsigned int DCR_STROBE ; 
 unsigned int DCR_nINIT ; 
 int /*<<< orphan*/  FUNC1 (struct parport*,unsigned char,unsigned char) ; 
 unsigned char FUNC2 (struct parport*) ; 

__attribute__((used)) static inline unsigned char FUNC3(struct parport *p,
						      unsigned char mask,
						      unsigned char val)
{
	const unsigned int wm =
		DCR_STROBE | DCR_AUTOFD | DCR_nINIT | DCR_SELECT;
	FUNC0(p, mask, wm);
	FUNC0(p, val, wm);
	FUNC1(p, mask & wm, val & wm);
	return FUNC2(p);
}