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
struct vm_area_struct {int /*<<< orphan*/  vm_start; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cfag12864b_buffer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct fb_info *info, struct vm_area_struct *vma)
{
	return FUNC1(vma, vma->vm_start,
		FUNC0(cfag12864b_buffer));
}