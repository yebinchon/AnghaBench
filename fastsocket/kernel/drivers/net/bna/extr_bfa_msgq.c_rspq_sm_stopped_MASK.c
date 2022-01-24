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
struct bfa_msgq_rspq {int dummy; } ;
typedef  enum rspq_event { ____Placeholder_rspq_event } rspq_event ;

/* Variables and functions */
#define  RSPQ_E_FAIL 130 
#define  RSPQ_E_START 129 
#define  RSPQ_E_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_msgq_rspq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  rspq_sm_init_wait ; 

__attribute__((used)) static void
FUNC2(struct bfa_msgq_rspq *rspq, enum rspq_event event)
{
	switch (event) {
	case RSPQ_E_START:
		FUNC0(rspq, rspq_sm_init_wait);
		break;

	case RSPQ_E_STOP:
	case RSPQ_E_FAIL:
		/* No-op */
		break;

	default:
		FUNC1(event);
	}
}