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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct flusher_data {unsigned long addr1; unsigned long addr2; struct vm_area_struct* vma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC2(void *args)
{
	struct flusher_data *data = args;
	struct vm_area_struct *vma;
	unsigned long start, end;

	vma = data->vma;
	start = data->addr1;
	end = data->addr2;

	FUNC0(vma->vm_mm, start, end);
	FUNC1(vma->vm_mm, start, end);
}