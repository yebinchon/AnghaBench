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
struct c4iw_ep {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  skb_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timeout_list ; 
 int /*<<< orphan*/  timeout_lock ; 
 int /*<<< orphan*/  workq ; 

__attribute__((used)) static void FUNC4(unsigned long arg)
{
	struct c4iw_ep *ep = (struct c4iw_ep *)arg;

	FUNC2(&timeout_lock);
	FUNC0(&ep->entry, &timeout_list);
	FUNC3(&timeout_lock);
	FUNC1(workq, &skb_work);
}