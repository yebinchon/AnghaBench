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
struct TYPE_2__ {int /*<<< orphan*/  page_count; } ;
struct vino_framebuffer {TYPE_1__ desc_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vino_framebuffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct vino_framebuffer *fb)
{
	FUNC0(fb, fb->desc_table.page_count);
}