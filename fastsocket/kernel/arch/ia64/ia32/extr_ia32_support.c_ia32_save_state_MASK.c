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
struct TYPE_2__ {int /*<<< orphan*/  old_k1; int /*<<< orphan*/  old_iob; void* fdr; void* fir; void* fcr; void* fsr; void* eflag; } ;
struct task_struct {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  IA64_KR_IO_BASE ; 
 int /*<<< orphan*/  IA64_KR_TSSD ; 
 int /*<<< orphan*/  _IA64_REG_AR_EFLAG ; 
 int /*<<< orphan*/  _IA64_REG_AR_FCR ; 
 int /*<<< orphan*/  _IA64_REG_AR_FDR ; 
 int /*<<< orphan*/  _IA64_REG_AR_FIR ; 
 int /*<<< orphan*/  _IA64_REG_AR_FSR ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2 (struct task_struct *t)
{
	t->thread.eflag = FUNC0(_IA64_REG_AR_EFLAG);
	t->thread.fsr   = FUNC0(_IA64_REG_AR_FSR);
	t->thread.fcr   = FUNC0(_IA64_REG_AR_FCR);
	t->thread.fir   = FUNC0(_IA64_REG_AR_FIR);
	t->thread.fdr   = FUNC0(_IA64_REG_AR_FDR);
	FUNC1(IA64_KR_IO_BASE, t->thread.old_iob);
	FUNC1(IA64_KR_TSSD, t->thread.old_k1);
}