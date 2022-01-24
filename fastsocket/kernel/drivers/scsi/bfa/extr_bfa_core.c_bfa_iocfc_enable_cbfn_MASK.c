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
struct bfa_s {int /*<<< orphan*/  iocfc; } ;
typedef  enum bfa_status { ____Placeholder_bfa_status } bfa_status ;

/* Variables and functions */
 int BFA_STATUS_OK ; 
 int /*<<< orphan*/  IOCFC_E_IOC_ENABLED ; 
 int /*<<< orphan*/  IOCFC_E_IOC_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(void *bfa_arg, enum bfa_status status)
{
	struct bfa_s	*bfa = bfa_arg;

	if (status == BFA_STATUS_OK)
		FUNC0(&bfa->iocfc, IOCFC_E_IOC_ENABLED);
	else
		FUNC0(&bfa->iocfc, IOCFC_E_IOC_FAILED);
}