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
 int /*<<< orphan*/  MAX_NUMNODES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  contig_page_data ; 
 int /*<<< orphan*/  node_data ; 

void FUNC2(void)
{

#ifdef CONFIG_NEED_MULTIPLE_NODES
	VMCOREINFO_SYMBOL(node_data);
	VMCOREINFO_LENGTH(node_data, MAX_NUMNODES);
#endif
#ifndef CONFIG_NEED_MULTIPLE_NODES
	FUNC1(contig_page_data);
#endif
}