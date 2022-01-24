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
struct vm_area_struct {struct vino_framebuffer* vm_private_data; } ;
struct vino_framebuffer {int /*<<< orphan*/  map_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct vm_area_struct *vma)
{
	struct vino_framebuffer *fb = vma->vm_private_data;

	fb->map_count++;
	FUNC0("vino_vm_open(): count = %d\n", fb->map_count);
}