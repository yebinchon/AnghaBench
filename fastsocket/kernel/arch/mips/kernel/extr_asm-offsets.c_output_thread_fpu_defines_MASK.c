#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fcr31; int /*<<< orphan*/ * fpr; } ;
struct TYPE_4__ {TYPE_1__ fpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_FCR31 ; 
 int /*<<< orphan*/  THREAD_FPR0 ; 
 int /*<<< orphan*/  THREAD_FPR1 ; 
 int /*<<< orphan*/  THREAD_FPR10 ; 
 int /*<<< orphan*/  THREAD_FPR11 ; 
 int /*<<< orphan*/  THREAD_FPR12 ; 
 int /*<<< orphan*/  THREAD_FPR13 ; 
 int /*<<< orphan*/  THREAD_FPR14 ; 
 int /*<<< orphan*/  THREAD_FPR15 ; 
 int /*<<< orphan*/  THREAD_FPR16 ; 
 int /*<<< orphan*/  THREAD_FPR17 ; 
 int /*<<< orphan*/  THREAD_FPR18 ; 
 int /*<<< orphan*/  THREAD_FPR19 ; 
 int /*<<< orphan*/  THREAD_FPR2 ; 
 int /*<<< orphan*/  THREAD_FPR20 ; 
 int /*<<< orphan*/  THREAD_FPR21 ; 
 int /*<<< orphan*/  THREAD_FPR22 ; 
 int /*<<< orphan*/  THREAD_FPR23 ; 
 int /*<<< orphan*/  THREAD_FPR24 ; 
 int /*<<< orphan*/  THREAD_FPR25 ; 
 int /*<<< orphan*/  THREAD_FPR26 ; 
 int /*<<< orphan*/  THREAD_FPR27 ; 
 int /*<<< orphan*/  THREAD_FPR28 ; 
 int /*<<< orphan*/  THREAD_FPR29 ; 
 int /*<<< orphan*/  THREAD_FPR3 ; 
 int /*<<< orphan*/  THREAD_FPR30 ; 
 int /*<<< orphan*/  THREAD_FPR31 ; 
 int /*<<< orphan*/  THREAD_FPR4 ; 
 int /*<<< orphan*/  THREAD_FPR5 ; 
 int /*<<< orphan*/  THREAD_FPR6 ; 
 int /*<<< orphan*/  THREAD_FPR7 ; 
 int /*<<< orphan*/  THREAD_FPR8 ; 
 int /*<<< orphan*/  THREAD_FPR9 ; 
 int /*<<< orphan*/  task_struct ; 
 TYPE_2__ thread ; 

void FUNC2(void)
{
	FUNC1(THREAD_FPR0, task_struct, thread.fpu.fpr[0]);
	FUNC1(THREAD_FPR1, task_struct, thread.fpu.fpr[1]);
	FUNC1(THREAD_FPR2, task_struct, thread.fpu.fpr[2]);
	FUNC1(THREAD_FPR3, task_struct, thread.fpu.fpr[3]);
	FUNC1(THREAD_FPR4, task_struct, thread.fpu.fpr[4]);
	FUNC1(THREAD_FPR5, task_struct, thread.fpu.fpr[5]);
	FUNC1(THREAD_FPR6, task_struct, thread.fpu.fpr[6]);
	FUNC1(THREAD_FPR7, task_struct, thread.fpu.fpr[7]);
	FUNC1(THREAD_FPR8, task_struct, thread.fpu.fpr[8]);
	FUNC1(THREAD_FPR9, task_struct, thread.fpu.fpr[9]);
	FUNC1(THREAD_FPR10, task_struct, thread.fpu.fpr[10]);
	FUNC1(THREAD_FPR11, task_struct, thread.fpu.fpr[11]);
	FUNC1(THREAD_FPR12, task_struct, thread.fpu.fpr[12]);
	FUNC1(THREAD_FPR13, task_struct, thread.fpu.fpr[13]);
	FUNC1(THREAD_FPR14, task_struct, thread.fpu.fpr[14]);
	FUNC1(THREAD_FPR15, task_struct, thread.fpu.fpr[15]);
	FUNC1(THREAD_FPR16, task_struct, thread.fpu.fpr[16]);
	FUNC1(THREAD_FPR17, task_struct, thread.fpu.fpr[17]);
	FUNC1(THREAD_FPR18, task_struct, thread.fpu.fpr[18]);
	FUNC1(THREAD_FPR19, task_struct, thread.fpu.fpr[19]);
	FUNC1(THREAD_FPR20, task_struct, thread.fpu.fpr[20]);
	FUNC1(THREAD_FPR21, task_struct, thread.fpu.fpr[21]);
	FUNC1(THREAD_FPR22, task_struct, thread.fpu.fpr[22]);
	FUNC1(THREAD_FPR23, task_struct, thread.fpu.fpr[23]);
	FUNC1(THREAD_FPR24, task_struct, thread.fpu.fpr[24]);
	FUNC1(THREAD_FPR25, task_struct, thread.fpu.fpr[25]);
	FUNC1(THREAD_FPR26, task_struct, thread.fpu.fpr[26]);
	FUNC1(THREAD_FPR27, task_struct, thread.fpu.fpr[27]);
	FUNC1(THREAD_FPR28, task_struct, thread.fpu.fpr[28]);
	FUNC1(THREAD_FPR29, task_struct, thread.fpu.fpr[29]);
	FUNC1(THREAD_FPR30, task_struct, thread.fpu.fpr[30]);
	FUNC1(THREAD_FPR31, task_struct, thread.fpu.fpr[31]);

	FUNC1(THREAD_FCR31, task_struct, thread.fpu.fcr31);
	FUNC0();
}