#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct agp_memory {int key; struct agp_memory* next; } ;
struct TYPE_4__ {TYPE_1__* current_controller; } ;
struct TYPE_3__ {struct agp_memory* pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,struct agp_memory*) ; 
 TYPE_2__ agp_fe ; 

struct agp_memory *FUNC1(int key)
{
	struct agp_memory *curr;

	if (agp_fe.current_controller == NULL)
		return NULL;

	curr = agp_fe.current_controller->pool;

	while (curr != NULL) {
		if (curr->key == key)
			break;
		curr = curr->next;
	}

	FUNC0("key=%d -> mem=%p", key, curr);
	return curr;
}