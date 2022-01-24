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
typedef  int /*<<< orphan*/  u64 ;
struct node_entry {unsigned int generation; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  quadlet_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline int FUNC2(struct node_entry *ne, u64 addr, int extcode,
				 quadlet_t *buffer, quadlet_t arg)
{
	unsigned int g = ne->generation;

	FUNC1();
	return FUNC0(ne->host, ne->nodeid, g, addr, extcode, buffer, arg);
}