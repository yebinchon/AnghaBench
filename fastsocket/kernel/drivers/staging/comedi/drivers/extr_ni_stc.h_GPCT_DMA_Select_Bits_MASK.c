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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static inline unsigned FUNC2(unsigned gpct_index,
					    unsigned mite_channel)
{
	FUNC0(gpct_index > 1);
	return FUNC1(mite_channel) << (4 *
								    gpct_index);
}