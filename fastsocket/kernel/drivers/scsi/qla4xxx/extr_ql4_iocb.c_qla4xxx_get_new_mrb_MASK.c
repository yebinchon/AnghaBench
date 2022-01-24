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
struct scsi_qla_host {int dummy; } ;
struct mrb {struct scsi_qla_host* ha; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mrb* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mrb *FUNC1(struct scsi_qla_host *ha)
{
	struct mrb *mrb;

	mrb = FUNC0(sizeof(*mrb), GFP_KERNEL);
	if (!mrb)
		return mrb;

	mrb->ha = ha;
	return mrb;
}