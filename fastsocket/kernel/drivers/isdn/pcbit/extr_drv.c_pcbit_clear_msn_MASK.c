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
struct pcbit_dev {struct msn_entry* msn_list; } ;
struct msn_entry {struct msn_entry* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msn_entry*) ; 

__attribute__((used)) static void FUNC1(struct pcbit_dev *dev)
{
	struct msn_entry *ptr, *back;

	for (ptr=dev->msn_list; ptr; )
	{
		back = ptr->next;
		FUNC0(ptr);
		ptr = back;
	}

	dev->msn_list = NULL; 
}