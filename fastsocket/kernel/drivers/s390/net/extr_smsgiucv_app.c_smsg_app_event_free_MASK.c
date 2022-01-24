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
struct smsg_app_event {struct smsg_app_event* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smsg_app_event*) ; 

__attribute__((used)) static void FUNC1(struct smsg_app_event *ev)
{
	FUNC0(ev->buf);
	FUNC0(ev);
}