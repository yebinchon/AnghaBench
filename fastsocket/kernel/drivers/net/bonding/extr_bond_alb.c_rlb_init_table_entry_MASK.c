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
struct rlb_client_info {void* prev; void* next; } ;

/* Variables and functions */
 void* RLB_NULL_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct rlb_client_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct rlb_client_info *entry)
{
	FUNC0(entry, 0, sizeof(struct rlb_client_info));
	entry->next = RLB_NULL_INDEX;
	entry->prev = RLB_NULL_INDEX;
}