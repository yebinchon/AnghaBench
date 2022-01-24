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
struct tg3 {int /*<<< orphan*/  reset_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESET_TASK_PENDING ; 
 int /*<<< orphan*/  TX_RECOVERY_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct tg3 *tp)
{
	FUNC0(&tp->reset_task);
	FUNC1(tp, RESET_TASK_PENDING);
	FUNC1(tp, TX_RECOVERY_PENDING);
}