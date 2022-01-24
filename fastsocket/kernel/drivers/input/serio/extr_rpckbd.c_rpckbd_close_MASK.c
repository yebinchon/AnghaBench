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
 int /*<<< orphan*/  IRQ_KEYBOARDRX ; 
 int /*<<< orphan*/  IRQ_KEYBOARDTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct serio*) ; 

__attribute__((used)) static void FUNC1(struct serio *port)
{
	FUNC0(IRQ_KEYBOARDRX, port);
	FUNC0(IRQ_KEYBOARDTX, port);
}