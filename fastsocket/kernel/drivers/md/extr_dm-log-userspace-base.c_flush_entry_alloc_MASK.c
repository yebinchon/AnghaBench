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
struct flush_entry {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC1(gfp_t gfp_mask, void *pool_data)
{
	return FUNC0(sizeof(struct flush_entry), gfp_mask);
}