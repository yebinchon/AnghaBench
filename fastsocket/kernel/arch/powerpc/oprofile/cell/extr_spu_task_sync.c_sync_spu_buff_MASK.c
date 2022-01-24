#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int head; int tail; int /*<<< orphan*/ * buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  buffer_lock ; 
 int /*<<< orphan*/  max_spu_buff ; 
 int num_spu_nodes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* spu_buff ; 

void FUNC3(void)
{
	int spu;
	unsigned long flags;
	int curr_head;

	for (spu = 0; spu < num_spu_nodes; spu++) {
		/* In case there was an issue and the buffer didn't
		 * get created skip it.
		 */
		if (spu_buff[spu].buff == NULL)
			continue;

		/* Hold the lock to make sure the head/tail
		 * doesn't change while spu_buff_add() is
		 * deciding if the buffer is full or not.
		 * Being a little paranoid.
		 */
		FUNC1(&buffer_lock, flags);
		curr_head = spu_buff[spu].head;
		FUNC2(&buffer_lock, flags);

		/* Transfer the current contents to the kernel buffer.
		 * data can still be added to the head of the buffer.
		 */
		FUNC0(spu_buff[spu].buff,
				  spu_buff[spu].tail,
				  curr_head, max_spu_buff);

		FUNC1(&buffer_lock, flags);
		spu_buff[spu].tail = curr_head;
		FUNC2(&buffer_lock, flags);
	}

}