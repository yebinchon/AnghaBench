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
typedef  unsigned long long u64 ;
struct tlbe {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct tlbe const*) ; 

__attribute__((used)) static inline u64 FUNC1(const struct tlbe *tlbe)
{
	unsigned int pgsize = FUNC0(tlbe);
	return 1ULL << 10 << pgsize;
}