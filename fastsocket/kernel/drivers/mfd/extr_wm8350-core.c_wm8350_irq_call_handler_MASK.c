#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wm8350 {int /*<<< orphan*/  irq_mutex; int /*<<< orphan*/  dev; TYPE_1__* irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* handler ) (struct wm8350*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wm8350*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wm8350*,int) ; 

__attribute__((used)) static void FUNC5(struct wm8350 *wm8350, int irq)
{
	FUNC1(&wm8350->irq_mutex);

	if (wm8350->irq[irq].handler)
		wm8350->irq[irq].handler(wm8350, irq, wm8350->irq[irq].data);
	else {
		FUNC0(wm8350->dev, "irq %d nobody cared. now masked.\n",
			irq);
		FUNC4(wm8350, irq);
	}

	FUNC2(&wm8350->irq_mutex);
}