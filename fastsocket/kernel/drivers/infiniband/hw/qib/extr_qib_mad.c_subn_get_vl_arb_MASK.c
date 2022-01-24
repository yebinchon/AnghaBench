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
typedef  int /*<<< orphan*/  u8 ;
struct qib_pportdata {scalar_t__ vls_supported; TYPE_1__* dd; } ;
struct ib_smp {int /*<<< orphan*/  status; int /*<<< orphan*/  data; int /*<<< orphan*/  attr_mod; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* f_get_ib_table ) (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int /*<<< orphan*/  IB_SMP_UNSUP_METHOD ; 
 unsigned int IB_VLARB_HIGHPRI_0_31 ; 
 unsigned int IB_VLARB_LOWPRI_0_31 ; 
 scalar_t__ IB_VL_VL0 ; 
 int /*<<< orphan*/  QIB_IB_TBL_VL_HIGH_ARB ; 
 int /*<<< orphan*/  QIB_IB_TBL_VL_LOW_ARB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct qib_pportdata* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ib_smp *smp, struct ib_device *ibdev,
			   u8 port)
{
	unsigned which = FUNC0(smp->attr_mod) >> 16;
	struct qib_pportdata *ppd = FUNC2(FUNC6(ibdev, port));

	FUNC1(smp->data, 0, sizeof(smp->data));

	if (ppd->vls_supported == IB_VL_VL0)
		smp->status |= IB_SMP_UNSUP_METHOD;
	else if (which == IB_VLARB_LOWPRI_0_31)
		(void) ppd->dd->f_get_ib_table(ppd, QIB_IB_TBL_VL_LOW_ARB,
						   smp->data);
	else if (which == IB_VLARB_HIGHPRI_0_31)
		(void) ppd->dd->f_get_ib_table(ppd, QIB_IB_TBL_VL_HIGH_ARB,
						   smp->data);
	else
		smp->status |= IB_SMP_INVALID_FIELD;

	return FUNC3(smp);
}