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

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* diag204_buf ; 
 int diag204_buf_pages ; 

__attribute__((used)) static void *FUNC2(void)
{
	diag204_buf = (void*)FUNC1(GFP_KERNEL,0);
	if (!diag204_buf)
		return FUNC0(-ENOMEM);
	diag204_buf_pages = 1;
	return diag204_buf;
}