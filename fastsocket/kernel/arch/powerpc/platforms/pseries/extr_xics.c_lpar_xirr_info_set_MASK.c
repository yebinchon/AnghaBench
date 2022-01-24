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
 unsigned long H_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,unsigned int) ; 
 unsigned long FUNC1 (unsigned int) ; 

__attribute__((used)) static inline void FUNC2(unsigned int value)
{
	unsigned long lpar_rc;

	lpar_rc = FUNC1(value);
	if (lpar_rc != H_SUCCESS)
		FUNC0("bad return code EOI - rc = %ld, value=%x\n", lpar_rc,
		      value);
}