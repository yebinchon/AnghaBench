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
typedef  int /*<<< orphan*/  u64 ;
struct h_galpa {int dummy; } ;
struct TYPE_2__ {struct h_galpa kernel; } ;
struct ehca_cq {TYPE_1__ galpas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cqx_ep ; 
 int /*<<< orphan*/  FUNC1 (struct h_galpa,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct h_galpa,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct ehca_cq *cq)
{
	u64 CQx_EP;
	struct h_galpa gal = cq->galpas.kernel;

	FUNC2(gal, cqx_ep, 0x0);
	CQx_EP = FUNC1(gal, FUNC0(cqx_ep));

	return;
}