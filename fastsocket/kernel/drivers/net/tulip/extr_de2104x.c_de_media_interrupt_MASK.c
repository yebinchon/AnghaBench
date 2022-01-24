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
typedef  int u32 ;
struct de_private {int /*<<< orphan*/  media_timer; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DE_TIMER_LINK ; 
 scalar_t__ DE_TIMER_NO_LINK ; 
 int LinkFail ; 
 int LinkPass ; 
 int /*<<< orphan*/  FUNC1 (struct de_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct de_private*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (struct de_private *de, u32 status)
{
	if (status & LinkPass) {
		FUNC2(de);
		FUNC3(&de->media_timer, jiffies + DE_TIMER_LINK);
		return;
	}

	FUNC0(!(status & LinkFail));

	if (FUNC4(de->dev)) {
		FUNC1(de);
		FUNC3(&de->media_timer, jiffies + DE_TIMER_NO_LINK);
	}
}