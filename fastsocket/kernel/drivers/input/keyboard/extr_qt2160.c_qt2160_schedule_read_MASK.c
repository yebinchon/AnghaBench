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
struct qt2160_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  dwork; } ;

/* Variables and functions */
 int /*<<< orphan*/  QT2160_CYCLE_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct qt2160_data *qt2160)
{
	FUNC1(&qt2160->lock);
	FUNC0(&qt2160->dwork, QT2160_CYCLE_INTERVAL);
	FUNC2(&qt2160->lock);
}