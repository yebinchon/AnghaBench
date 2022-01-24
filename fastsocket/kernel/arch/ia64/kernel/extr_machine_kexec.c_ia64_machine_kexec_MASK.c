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
typedef  int /*<<< orphan*/  u64 ;
struct unw_frame_info {scalar_t__ sw; } ;
struct kimage {scalar_t__ type; int /*<<< orphan*/  start; int /*<<< orphan*/  head; int /*<<< orphan*/  control_code_page; } ;
typedef  int /*<<< orphan*/  (* relocate_new_kernel_t ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
struct TYPE_5__ {int /*<<< orphan*/  fp; } ;
typedef  TYPE_2__ ia64_fptr_t ;
typedef  scalar_t__ __u64 ;
struct TYPE_4__ {scalar_t__ ksp; } ;
struct TYPE_6__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ IA64_SPURIOUS_INT_VECTOR ; 
 scalar_t__ KEXEC_TYPE_CRASH ; 
 int /*<<< orphan*/  SAL_VECTOR_OS_INIT ; 
 int /*<<< orphan*/  SAL_VECTOR_OS_MCA ; 
 int /*<<< orphan*/  _IA64_REG_CR_CMCV ; 
 int /*<<< orphan*/  _IA64_REG_CR_PMV ; 
 int /*<<< orphan*/  _IA64_REG_CR_TPR ; 
 int /*<<< orphan*/  _IA64_REG_GP ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_3__* current ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  ia64_boot_param ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ ia64_os_init_on_kdump ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct unw_frame_info *info, void *arg)
{
	struct kimage *image = arg;
	relocate_new_kernel_t rnk;
	void *pal_addr = FUNC4();
	unsigned long code_addr = (unsigned long)FUNC16(image->control_code_page);
	int ii;
	u64 fp, gp;
	ia64_fptr_t *init_handler = (ia64_fptr_t *)ia64_os_init_on_kdump;

	FUNC1(!image);
	if (image->type == KEXEC_TYPE_CRASH) {
		FUNC3();
		current->thread.ksp = (__u64)info->sw - 16;

		/* Register noop init handler */
		fp = FUNC14(init_handler->fp);
		gp = FUNC14(FUNC7(_IA64_REG_GP));
		FUNC8(SAL_VECTOR_OS_INIT, fp, gp, 0, fp, gp, 0);
	} else {
		/* Unregister init handlers of current kernel */
		FUNC8(SAL_VECTOR_OS_INIT, 0, 0, 0, 0, 0, 0);
	}

	/* Unregister mca handler - No more recovery on current kernel */
	FUNC8(SAL_VECTOR_OS_MCA, 0, 0, 0, 0, 0, 0);

	/* Interrupts aren't acceptable while we reboot */
	FUNC15();

	/* Mask CMC and Performance Monitor interrupts */
	FUNC12(_IA64_REG_CR_PMV, 1 << 16);
	FUNC12(_IA64_REG_CR_CMCV, 1 << 16);

	/* Mask ITV and Local Redirect Registers */
	FUNC9(1 << 16);
	FUNC10(1 << 16);
	FUNC11(1 << 16);

	/* terminate possible nested in-service interrupts */
	for (ii = 0; ii < 16; ii++)
		FUNC5();

	/* unmask TPR and clear any pending interrupts */
	FUNC12(_IA64_REG_CR_TPR, 0);
	FUNC13();
	while (FUNC6() != IA64_SPURIOUS_INT_VECTOR)
		FUNC5();
	FUNC17();
	rnk = (relocate_new_kernel_t)&code_addr;
	(*rnk)(image->head, image->start, ia64_boot_param,
		     FUNC2((unsigned long) pal_addr));
	FUNC0();
}