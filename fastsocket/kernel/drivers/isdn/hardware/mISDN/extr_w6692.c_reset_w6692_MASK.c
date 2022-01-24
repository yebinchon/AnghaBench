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
struct w6692_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  W_D_CTL ; 
 int /*<<< orphan*/  W_D_CTL_SRST ; 
 int /*<<< orphan*/  FUNC0 (struct w6692_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct w6692_hw *card)
{
	FUNC0(card, W_D_CTL, W_D_CTL_SRST);
	FUNC1(10);
	FUNC0(card, W_D_CTL, 0);
}