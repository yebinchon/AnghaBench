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
 int /*<<< orphan*/  H_PUT_TCE ; 
 long FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static inline long FUNC1(unsigned long liobn, unsigned long ioba,
		unsigned long tceval)
{
	return FUNC0(H_PUT_TCE, liobn, ioba, tceval);
}