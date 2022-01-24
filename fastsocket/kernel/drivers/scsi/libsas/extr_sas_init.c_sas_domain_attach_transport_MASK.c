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
struct scsi_transport_template {int create_work_queue; int /*<<< orphan*/  eh_strategy_handler; int /*<<< orphan*/  eh_timed_out; } ;
struct sas_internal {struct sas_domain_function_template* dft; } ;
struct sas_domain_function_template {int dummy; } ;

/* Variables and functions */
 struct scsi_transport_template* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sas_scsi_recover_host ; 
 int /*<<< orphan*/  sas_scsi_timed_out ; 
 int /*<<< orphan*/  sft ; 
 struct sas_internal* FUNC1 (struct scsi_transport_template*) ; 

struct scsi_transport_template *
FUNC2(struct sas_domain_function_template *dft)
{
	struct scsi_transport_template *stt = FUNC0(&sft);
	struct sas_internal *i;

	if (!stt)
		return stt;

	i = FUNC1(stt);
	i->dft = dft;
	stt->create_work_queue = 1;
	stt->eh_timed_out = sas_scsi_timed_out;
	stt->eh_strategy_handler = sas_scsi_recover_host;

	return stt;
}