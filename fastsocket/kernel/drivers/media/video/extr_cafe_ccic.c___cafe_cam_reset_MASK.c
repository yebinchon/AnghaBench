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
struct cafe_camera {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  reset ; 
 int FUNC0 (struct cafe_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct cafe_camera *cam)
{
	return FUNC0(cam, core, reset, 0);
}