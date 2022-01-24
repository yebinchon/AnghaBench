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
struct fore200e {int /*<<< orphan*/  q_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fore200e*) ; 
 int /*<<< orphan*/  FUNC1 (struct fore200e*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct fore200e* fore200e)
{
    unsigned long flags;

    FUNC2(&fore200e->q_lock, flags);
    FUNC0(fore200e);
    FUNC3(&fore200e->q_lock, flags);

    FUNC2(&fore200e->q_lock, flags);
    FUNC1(fore200e);
    FUNC3(&fore200e->q_lock, flags);
}