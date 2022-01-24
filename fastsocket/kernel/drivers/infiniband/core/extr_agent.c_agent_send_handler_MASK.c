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
struct ib_mad_send_wc {TYPE_1__* send_buf; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct ib_mad_agent *mad_agent,
			       struct ib_mad_send_wc *mad_send_wc)
{
	FUNC0(mad_send_wc->send_buf->ah);
	FUNC1(mad_send_wc->send_buf);
}