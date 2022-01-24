#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  smem_len; int /*<<< orphan*/  smem_start; } ;
struct TYPE_4__ {TYPE_1__ fix; int /*<<< orphan*/  screen_base; } ;
struct clcd_fb {TYPE_2__ fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct clcd_fb *fb)
{
	FUNC0(fb->fb.screen_base);
	FUNC1(fb->fb.fix.smem_start, fb->fb.fix.smem_len);
}