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
struct task_struct {int dummy; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THREAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct task_struct *FUNC2(void)
{
	struct task_struct *p = FUNC1(THREAD_SIZE, GFP_KERNEL);
	if (p)
		FUNC0((atomic_t *)(p+1), 1);
	return p;
}