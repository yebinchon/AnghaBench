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
typedef  int u32 ;
struct qpn_map {scalar_t__ page; } ;
struct qib_qpn_table {struct qpn_map* map; } ;

/* Variables and functions */
 int BITS_PER_PAGE ; 
 int BITS_PER_PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct qib_qpn_table *qpt, u32 qpn)
{
	struct qpn_map *map;

	map = qpt->map + qpn / BITS_PER_PAGE;
	if (map->page)
		FUNC0(qpn & BITS_PER_PAGE_MASK, map->page);
}