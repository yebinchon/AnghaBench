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
struct ioctl_job_cb_ctx {int processed; } ;
struct cryptocop_operation {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cryptocop_ioc_process_wq ; 
 int /*<<< orphan*/  FUNC1 (char*,struct cryptocop_operation*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cryptocop_operation *op, void*cb_data)
{
	struct ioctl_job_cb_ctx *jc = (struct ioctl_job_cb_ctx *)cb_data;

	FUNC0(FUNC1("ioctl_process_job_callback: op=0x%p, cb_data=0x%p\n", op, cb_data));

	jc->processed = 1;
	FUNC2(&cryptocop_ioc_process_wq);
}