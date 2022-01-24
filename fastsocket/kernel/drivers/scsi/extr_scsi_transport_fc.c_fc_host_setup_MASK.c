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
struct transport_container {int dummy; } ;
struct fc_host_attrs {int node_name; int port_name; int permanent_port_name; int maxframe_size; int port_id; int fabric_name; int /*<<< orphan*/ * work_q; void* devloss_work_q; int /*<<< orphan*/  devloss_work_q_name; int /*<<< orphan*/  dev_loss_tmo; int /*<<< orphan*/  work_q_name; scalar_t__ npiv_vports_inuse; scalar_t__ next_vport_number; scalar_t__ next_target_id; scalar_t__ next_rport_number; int /*<<< orphan*/  vports; int /*<<< orphan*/  rport_bindings; int /*<<< orphan*/  rports; int /*<<< orphan*/  tgtid_bind_type; int /*<<< orphan*/  system_hostname; int /*<<< orphan*/  symbolic_name; void* speed; int /*<<< orphan*/  active_fc4s; int /*<<< orphan*/  port_state; int /*<<< orphan*/  port_type; int /*<<< orphan*/  optionrom_version; int /*<<< orphan*/  firmware_version; int /*<<< orphan*/  driver_version; int /*<<< orphan*/  hardware_version; int /*<<< orphan*/  model_description; int /*<<< orphan*/  model; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  serial_number; scalar_t__ max_npiv_vports; void* supported_speeds; int /*<<< orphan*/  supported_fc4s; int /*<<< orphan*/  supported_classes; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_no; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FC_COS_UNSPECIFIED ; 
 void* FC_PORTSPEED_UNKNOWN ; 
 int /*<<< orphan*/  FC_PORTSTATE_UNKNOWN ; 
 int /*<<< orphan*/  FC_PORTTYPE_UNKNOWN ; 
 int /*<<< orphan*/  FC_TGTID_BIND_BY_WWPN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*,struct fc_host_attrs*) ; 
 int /*<<< orphan*/  fc_dev_loss_tmo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct fc_host_attrs* FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static int FUNC8(struct transport_container *tc, struct device *dev,
			 struct device *cdev)
{
	struct Scsi_Host *shost = FUNC3(dev);
	struct fc_host_attrs *fc_host = FUNC6(shost);

	/*
	 * Set default values easily detected by the midlayer as
	 * failure cases.  The scsi lldd is responsible for initializing
	 * all transport attributes to valid values per host.
	 */
	fc_host->node_name = -1;
	fc_host->port_name = -1;
	fc_host->permanent_port_name = -1;
	fc_host->supported_classes = FC_COS_UNSPECIFIED;
	FUNC5(fc_host->supported_fc4s, 0,
		sizeof(fc_host->supported_fc4s));
	fc_host->supported_speeds = FC_PORTSPEED_UNKNOWN;
	fc_host->maxframe_size = -1;
	fc_host->max_npiv_vports = 0;
	FUNC5(fc_host->serial_number, 0,
		sizeof(fc_host->serial_number));
	FUNC5(fc_host->manufacturer, 0,
		sizeof(fc_host->manufacturer));
	FUNC5(fc_host->model, 0,
		sizeof(fc_host->model));
	FUNC5(fc_host->model_description, 0,
		sizeof(fc_host->model_description));
	FUNC5(fc_host->hardware_version, 0,
		sizeof(fc_host->hardware_version));
	FUNC5(fc_host->driver_version, 0,
		sizeof(fc_host->driver_version));
	FUNC5(fc_host->firmware_version, 0,
		sizeof(fc_host->firmware_version));
	FUNC5(fc_host->optionrom_version, 0,
		sizeof(fc_host->optionrom_version));

	fc_host->port_id = -1;
	fc_host->port_type = FC_PORTTYPE_UNKNOWN;
	fc_host->port_state = FC_PORTSTATE_UNKNOWN;
	FUNC5(fc_host->active_fc4s, 0,
		sizeof(fc_host->active_fc4s));
	fc_host->speed = FC_PORTSPEED_UNKNOWN;
	fc_host->fabric_name = -1;
	FUNC5(fc_host->symbolic_name, 0, sizeof(fc_host->symbolic_name));
	FUNC5(fc_host->system_hostname, 0, sizeof(fc_host->system_hostname));

	fc_host->tgtid_bind_type = FC_TGTID_BIND_BY_WWPN;

	FUNC0(&fc_host->rports);
	FUNC0(&fc_host->rport_bindings);
	FUNC0(&fc_host->vports);
	fc_host->next_rport_number = 0;
	fc_host->next_target_id = 0;
	fc_host->next_vport_number = 0;
	fc_host->npiv_vports_inuse = 0;

	FUNC7(fc_host->work_q_name, sizeof(fc_host->work_q_name),
		 "fc_wq_%d", shost->host_no);
	fc_host->work_q = FUNC1(
					fc_host->work_q_name);
	if (!fc_host->work_q)
		return -ENOMEM;

	fc_host->dev_loss_tmo = fc_dev_loss_tmo;
	FUNC7(fc_host->devloss_work_q_name,
		 sizeof(fc_host->devloss_work_q_name),
		 "fc_dl_%d", shost->host_no);
	fc_host->devloss_work_q = FUNC1(
					fc_host->devloss_work_q_name);
	if (!fc_host->devloss_work_q) {
		FUNC2(fc_host->work_q);
		fc_host->work_q = NULL;
		return -ENOMEM;
	}

	FUNC4(shost, fc_host);
	/* ignore any bsg add error - we just can't do sgio */

	return 0;
}