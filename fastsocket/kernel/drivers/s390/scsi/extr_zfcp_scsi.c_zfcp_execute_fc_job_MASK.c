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
struct fc_bsg_job {TYPE_1__* request; } ;
struct TYPE_2__ {int msgcode; } ;

/* Variables and functions */
 int EINVAL ; 
#define  FC_BSG_HST_CT 131 
#define  FC_BSG_HST_ELS_NOLOGIN 130 
#define  FC_BSG_RPT_CT 129 
#define  FC_BSG_RPT_ELS 128 
 int FUNC0 (struct fc_bsg_job*) ; 
 int FUNC1 (struct fc_bsg_job*) ; 

__attribute__((used)) static int FUNC2(struct fc_bsg_job *job)
{
	switch (job->request->msgcode) {
	case FC_BSG_RPT_ELS:
	case FC_BSG_HST_ELS_NOLOGIN:
		return FUNC1(job);
	case FC_BSG_RPT_CT:
	case FC_BSG_HST_CT:
		return FUNC0(job);
	default:
		return -EINVAL;
	}
}