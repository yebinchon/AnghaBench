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
struct ipmi_recv_msg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_timeout_tofree ; 
 int /*<<< orphan*/  set_timeout_wait ; 

__attribute__((used)) static void FUNC2(struct ipmi_recv_msg *msg)
{
    if (FUNC0(&set_timeout_tofree))
	    FUNC1(&set_timeout_wait);
}