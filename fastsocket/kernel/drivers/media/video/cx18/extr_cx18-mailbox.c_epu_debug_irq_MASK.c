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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__* args; } ;
struct cx18_in_work_order {char* str; int flags; TYPE_1__ mb; } ;
struct cx18 {scalar_t__ enc_mem; } ;

/* Variables and functions */
 int CX18_F_EWO_MB_STALE ; 
 scalar_t__ SCB_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct cx18*,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*,struct cx18_in_work_order*) ; 

__attribute__((used)) static
int FUNC3(struct cx18 *cx, struct cx18_in_work_order *order)
{
	u32 str_offset;
	char *str = order->str;

	str[0] = '\0';
	str_offset = order->mb.args[1];
	if (str_offset) {
		FUNC1(cx, str_offset);
		FUNC0(cx, str, cx->enc_mem + str_offset, 252);
		str[252] = '\0';
		FUNC1(cx, SCB_OFFSET);
	}

	if ((order->flags & CX18_F_EWO_MB_STALE) == 0)
		FUNC2(cx, order);

	return str_offset ? 1 : 0;
}