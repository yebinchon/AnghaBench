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
struct kimage {int /*<<< orphan*/  control_code_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kimage*) ; 
 scalar_t__ nx_enabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(struct kimage *image)
{
	if (nx_enabled)
		FUNC1(image->control_code_page, 1);
	FUNC0(image);
}