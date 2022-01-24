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
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef  TYPE_1__ user_info_t ;
struct pcmcia_socket {int /*<<< orphan*/  queue; TYPE_1__* user; } ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct pcmcia_socket *s, event_t event)
{
    user_info_t *user;
    for (user = s->user; user; user = user->next)
	FUNC0(user, event);
    FUNC1(&s->queue);
}