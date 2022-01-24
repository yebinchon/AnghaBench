#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct list_head {struct list_head* next; } ;
typedef  TYPE_1__* pbuff_t ;
struct TYPE_7__ {TYPE_1__* transfer_buffer; } ;
struct TYPE_6__ {TYPE_2__* purb; } ;

/* Variables and functions */
 int /*<<< orphan*/  buff_list ; 
 int /*<<< orphan*/  buff_t ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 
 TYPE_1__* FUNC4 (struct list_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6 (struct list_head *q)
{
	struct list_head *tmp;
	struct list_head *p;
	pbuff_t b;

	FUNC0("dabusb_free_queue");
	for (p = q->next; p != q;) {
		b = FUNC4 (p, buff_t, buff_list);

#ifdef DEBUG
		dump_urb(b->purb);
#endif
		FUNC2(b->purb->transfer_buffer);
		FUNC5(b->purb);
		tmp = p->next;
		FUNC3 (p);
		FUNC2 (b);
		p = tmp;
	}

	return 0;
}