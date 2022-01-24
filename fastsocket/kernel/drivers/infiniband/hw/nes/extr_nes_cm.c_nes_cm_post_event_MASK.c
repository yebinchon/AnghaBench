#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* cm_id; } ;
struct nes_cm_event {int /*<<< orphan*/  event_work; TYPE_4__* cm_node; TYPE_1__ cm_info; } ;
struct TYPE_8__ {TYPE_2__* cm_core; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* add_ref ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  event_wq; int /*<<< orphan*/  events_posted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NES_DBG_CM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nes_cm_event_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(struct nes_cm_event *event)
{
	FUNC2(&event->cm_node->cm_core->events_posted);
	FUNC1(event->cm_node);
	event->cm_info.cm_id->add_ref(event->cm_info.cm_id);
	FUNC0(&event->event_work, nes_cm_event_handler);
	FUNC3(NES_DBG_CM, "cm_node=%p queue_work, event=%p\n",
		  event->cm_node, event);

	FUNC4(event->cm_node->cm_core->event_wq, &event->event_work);

	FUNC3(NES_DBG_CM, "Exit\n");
	return 0;
}