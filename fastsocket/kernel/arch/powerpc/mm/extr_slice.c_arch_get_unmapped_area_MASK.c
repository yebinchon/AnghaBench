#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct file {int dummy; } ;
struct TYPE_6__ {TYPE_2__* mm; } ;
struct TYPE_4__ {int /*<<< orphan*/  user_psize; } ;
struct TYPE_5__ {TYPE_1__ context; } ;

/* Variables and functions */
 TYPE_3__* current ; 
 unsigned long FUNC0 (unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

unsigned long FUNC1(struct file *filp,
				     unsigned long addr,
				     unsigned long len,
				     unsigned long pgoff,
				     unsigned long flags)
{
	return FUNC0(addr, len, flags,
				       current->mm->context.user_psize,
				       0, 1);
}