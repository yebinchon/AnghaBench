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
struct ib_mad_send_buf {scalar_t__* context; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_send_buf*) ; 

__attribute__((used)) static void FUNC3(struct ib_mad_send_buf *msg)
{
	FUNC1(msg->ah);
	if (msg->context[0])
		FUNC0(msg->context[0]);
	FUNC2(msg);
}