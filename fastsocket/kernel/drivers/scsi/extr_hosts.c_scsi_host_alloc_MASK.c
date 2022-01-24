#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_host_template {scalar_t__ supported_mode; int dma_boundary; scalar_t__ max_sectors; scalar_t__ max_host_blocked; int /*<<< orphan*/  ordered_tag; int /*<<< orphan*/  use_clustering; scalar_t__ unchecked_isa_dma; int /*<<< orphan*/  cmd_per_lun; int /*<<< orphan*/  sg_tablesize; int /*<<< orphan*/  can_queue; int /*<<< orphan*/  this_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  groups; int /*<<< orphan*/ * class; struct TYPE_3__* parent; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; } ;
struct Scsi_Host {int dma_channel; int max_id; int max_lun; int max_cmd_len; int eh_deadline; scalar_t__ active_mode; int dma_boundary; struct scsi_host_template* hostt; int /*<<< orphan*/  ehandler; scalar_t__ host_no; TYPE_1__ shost_dev; TYPE_1__ shost_gendev; scalar_t__ max_sectors; scalar_t__ max_host_blocked; int /*<<< orphan*/  ordered_tag; int /*<<< orphan*/  use_clustering; scalar_t__ unchecked_isa_dma; int /*<<< orphan*/  cmd_per_lun; int /*<<< orphan*/  sg_tablesize; int /*<<< orphan*/  can_queue; int /*<<< orphan*/  this_id; int /*<<< orphan*/ * transportt; scalar_t__ max_channel; int /*<<< orphan*/  scan_mutex; int /*<<< orphan*/  host_wait; int /*<<< orphan*/  starved_list; int /*<<< orphan*/  eh_cmd_q; int /*<<< orphan*/  __targets; int /*<<< orphan*/  __devices; int /*<<< orphan*/  shost_state; int /*<<< orphan*/ * host_lock; int /*<<< orphan*/  default_lock; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODE_INITIATOR ; 
 scalar_t__ MODE_UNKNOWN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCSI_DEFAULT_HOST_BLOCKED ; 
 scalar_t__ SCSI_DEFAULT_MAX_SECTORS ; 
 int /*<<< orphan*/  SHOST_CREATED ; 
 int /*<<< orphan*/  __GFP_DMA ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  blank_transport_template ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,scalar_t__) ; 
 struct Scsi_Host* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scsi_bus_type ; 
 int /*<<< orphan*/  scsi_error_handler ; 
 int /*<<< orphan*/  scsi_host_next_hn ; 
 int /*<<< orphan*/  scsi_host_type ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_host_template*) ; 
 int /*<<< orphan*/  scsi_sysfs_shost_attr_groups ; 
 int /*<<< orphan*/  shost_class ; 
 int shost_eh_deadline ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct Scsi_Host *FUNC13(struct scsi_host_template *sht, int privsize)
{
	struct Scsi_Host *shost;
	gfp_t gfp_mask = GFP_KERNEL;
	int rval;

	if (sht->unchecked_isa_dma && privsize)
		gfp_mask |= __GFP_DMA;

	shost = FUNC9(sizeof(struct Scsi_Host) + privsize, gfp_mask);
	if (!shost)
		return NULL;

	shost->host_lock = &shost->default_lock;
	FUNC12(shost->host_lock);
	shost->shost_state = SHOST_CREATED;
	FUNC0(&shost->__devices);
	FUNC0(&shost->__targets);
	FUNC0(&shost->eh_cmd_q);
	FUNC0(&shost->starved_list);
	FUNC6(&shost->host_wait);

	FUNC10(&shost->scan_mutex);

	/*
	 * subtract one because we increment first then return, but we need to
	 * know what the next host number was before increment
	 */
	shost->host_no = FUNC3(&scsi_host_next_hn) - 1;
	shost->dma_channel = 0xff;

	/* These three are default values which can be overridden */
	shost->max_channel = 0;
	shost->max_id = 8;
	shost->max_lun = 8;

	/* Give each shost a default transportt */
	shost->transportt = &blank_transport_template;

	/*
	 * All drivers right now should be able to handle 12 byte
	 * commands.  Every so often there are requests for 16 byte
	 * commands, but individual low-level drivers need to certify that
	 * they actually do something sensible with such commands.
	 */
	shost->max_cmd_len = 12;
	shost->hostt = sht;
	shost->this_id = sht->this_id;
	shost->can_queue = sht->can_queue;
	shost->sg_tablesize = sht->sg_tablesize;
	shost->cmd_per_lun = sht->cmd_per_lun;
	shost->unchecked_isa_dma = sht->unchecked_isa_dma;
	shost->use_clustering = sht->use_clustering;
	shost->ordered_tag = sht->ordered_tag;
	shost->eh_deadline = shost_eh_deadline * HZ;

	if (sht->supported_mode == MODE_UNKNOWN)
		/* means we didn't set it ... default to INITIATOR */
		shost->active_mode = MODE_INITIATOR;
	else
		shost->active_mode = sht->supported_mode;

	if (sht->max_host_blocked)
		shost->max_host_blocked = sht->max_host_blocked;
	else
		shost->max_host_blocked = SCSI_DEFAULT_HOST_BLOCKED;

	/*
	 * If the driver imposes no hard sector transfer limit, start at
	 * machine infinity initially.
	 */
	if (sht->max_sectors)
		shost->max_sectors = sht->max_sectors;
	else
		shost->max_sectors = SCSI_DEFAULT_MAX_SECTORS;

	/*
	 * assume a 4GB boundary, if not set
	 */
	if (sht->dma_boundary)
		shost->dma_boundary = sht->dma_boundary;
	else
		shost->dma_boundary = 0xffffffff;

	FUNC5(&shost->shost_gendev);
	FUNC4(&shost->shost_gendev, "host%d", shost->host_no);
#ifndef CONFIG_SYSFS_DEPRECATED
	shost->shost_gendev.bus = &scsi_bus_type;
#endif
	shost->shost_gendev.type = &scsi_host_type;

	FUNC5(&shost->shost_dev);
	shost->shost_dev.parent = &shost->shost_gendev;
	shost->shost_dev.class = &shost_class;
	FUNC4(&shost->shost_dev, "host%d", shost->host_no);
	shost->shost_dev.groups = scsi_sysfs_shost_attr_groups;

	shost->ehandler = FUNC8(scsi_error_handler, shost,
			"scsi_eh_%d", shost->host_no);
	if (FUNC1(shost->ehandler)) {
		rval = FUNC2(shost->ehandler);
		goto fail_kfree;
	}

	FUNC11(shost->hostt);
	return shost;

 fail_kfree:
	FUNC7(shost);
	return NULL;
}