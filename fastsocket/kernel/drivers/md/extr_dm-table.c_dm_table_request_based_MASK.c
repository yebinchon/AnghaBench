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
struct dm_table {int dummy; } ;

/* Variables and functions */
 scalar_t__ DM_TYPE_REQUEST_BASED ; 
 scalar_t__ FUNC0 (struct dm_table*) ; 

bool FUNC1(struct dm_table *t)
{
	return FUNC0(t) == DM_TYPE_REQUEST_BASED;
}