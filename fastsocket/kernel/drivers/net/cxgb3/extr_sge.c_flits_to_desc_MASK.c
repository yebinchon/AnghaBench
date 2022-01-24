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
 unsigned int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int* flit_desc_map ; 

__attribute__((used)) static inline unsigned int FUNC2(unsigned int n)
{
	FUNC1(n >= FUNC0(flit_desc_map));
	return flit_desc_map[n];
}