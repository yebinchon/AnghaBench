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
struct serio_raw {int /*<<< orphan*/  wait; int /*<<< orphan*/ * serio; } ;
struct serio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct serio*) ; 
 struct serio_raw* FUNC3 (struct serio*) ; 
 int /*<<< orphan*/  FUNC4 (struct serio_raw*) ; 
 int /*<<< orphan*/  serio_raw_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct serio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct serio *serio)
{
	struct serio_raw *serio_raw;

	FUNC0(&serio_raw_mutex);

	serio_raw = FUNC3(serio);

	FUNC2(serio);
	FUNC5(serio, NULL);

	serio_raw->serio = NULL;
	if (!FUNC4(serio_raw))
		FUNC6(&serio_raw->wait);

	FUNC1(&serio_raw_mutex);
}