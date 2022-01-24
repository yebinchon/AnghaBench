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
struct h_epa {int dummy; } ;
struct TYPE_2__ {struct h_epa kernel; } ;
struct ehea_cq {TYPE_1__ epas; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQX_N1_GENERATE_COMP_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cqx_n1 ; 
 int /*<<< orphan*/  FUNC1 (struct h_epa,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct ehea_cq *cq)
{
	struct h_epa epa = cq->epas.kernel;
	FUNC1(epa, cqx_n1,
		     FUNC0(CQX_N1_GENERATE_COMP_EVENT, 1));
}