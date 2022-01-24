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
struct neighbour {int dummy; } ;
struct dst_entry {struct neighbour* neighbour; } ;

/* Variables and functions */

__attribute__((used)) static inline struct neighbour *FUNC0(struct dst_entry *dst)
{
	return dst->neighbour;
}