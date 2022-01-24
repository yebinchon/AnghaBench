#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pdabusb_t ;
struct TYPE_3__ {scalar_t__ got_mem; int /*<<< orphan*/  lock; int /*<<< orphan*/  rec_buff_list; int /*<<< orphan*/  free_buff_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4 (pdabusb_t s)
{
	unsigned long flags;
	FUNC1("dabusb_free_buffers");

	FUNC2(&s->lock, flags);

	FUNC0 (&s->free_buff_list);
	FUNC0 (&s->rec_buff_list);

	FUNC3(&s->lock, flags);

	s->got_mem = 0;
	return 0;
}