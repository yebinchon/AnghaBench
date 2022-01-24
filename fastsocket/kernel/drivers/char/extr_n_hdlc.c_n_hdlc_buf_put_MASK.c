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
struct n_hdlc_buf_list {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  count; struct n_hdlc_buf* tail; struct n_hdlc_buf* head; } ;
struct n_hdlc_buf {struct n_hdlc_buf* link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct n_hdlc_buf_list *list,
			   struct n_hdlc_buf *buf)
{
	unsigned long flags;
	FUNC0(&list->spinlock,flags);
	
	buf->link=NULL;
	if (list->tail)
		list->tail->link = buf;
	else
		list->head = buf;
	list->tail = buf;
	(list->count)++;
	
	FUNC1(&list->spinlock,flags);
	
}