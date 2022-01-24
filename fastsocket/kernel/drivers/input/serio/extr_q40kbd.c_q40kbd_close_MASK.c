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
struct serio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEYBOARD_UNLOCK_REG ; 
 int /*<<< orphan*/  KEY_IRQ_ENABLE_REG ; 
 int /*<<< orphan*/  Q40_IRQ_KEYBOARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct serio *port)
{
	FUNC1(0, KEY_IRQ_ENABLE_REG);
	FUNC1(-1, KEYBOARD_UNLOCK_REG);
	FUNC0(Q40_IRQ_KEYBOARD, NULL);

	FUNC2();
}