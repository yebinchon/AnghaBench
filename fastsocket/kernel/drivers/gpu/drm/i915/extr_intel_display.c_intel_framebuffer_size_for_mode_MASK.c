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
struct drm_display_mode {int vdisplay; int /*<<< orphan*/  hdisplay; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32
FUNC2(struct drm_display_mode *mode, int bpp)
{
	u32 pitch = FUNC1(mode->hdisplay, bpp);
	return FUNC0(pitch * mode->vdisplay, PAGE_SIZE);
}