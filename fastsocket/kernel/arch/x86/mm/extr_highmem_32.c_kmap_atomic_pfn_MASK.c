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
typedef  enum km_type { ____Placeholder_km_type } km_type ;

/* Variables and functions */
 void* FUNC0 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kmap_prot ; 

void *FUNC1(unsigned long pfn, enum km_type type)
{
	return FUNC0(pfn, type, kmap_prot);
}