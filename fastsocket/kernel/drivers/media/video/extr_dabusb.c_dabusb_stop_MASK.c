#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* pdabusb_t ;
struct TYPE_5__ {scalar_t__ counter; } ;
struct TYPE_6__ {TYPE_1__ pending_io; int /*<<< orphan*/  rec_buff_list; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  _stopped ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int FUNC2 (pdabusb_t s)
{
	FUNC1("dabusb_stop");

	s->state = _stopped;
	FUNC0 (s, &s->rec_buff_list);

	FUNC1("pending_io: %d", s->pending_io.counter);

	s->pending_io.counter = 0;
	return 0;
}