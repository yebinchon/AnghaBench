#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int length; int /*<<< orphan*/  type; } ;
struct viosrp_host_config {int /*<<< orphan*/  buffer; TYPE_3__ common; } ;
struct TYPE_5__ {struct viosrp_host_config host_config; } ;
struct TYPE_6__ {TYPE_1__ mad; } ;
struct srp_event_struct {int /*<<< orphan*/  comp; TYPE_2__ iu; } ;
struct ibmvscsi_host_data {int /*<<< orphan*/  dev; TYPE_4__* host; int /*<<< orphan*/  pool; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FW_FEATURE_CMO ; 
 int /*<<< orphan*/  VIOSRP_HOST_CONFIG_TYPE ; 
 int /*<<< orphan*/  VIOSRP_MAD_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct srp_event_struct*) ; 
 struct srp_event_struct* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct srp_event_struct*,struct ibmvscsi_host_data*,int) ; 
 int info_timeout ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct srp_event_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct viosrp_host_config*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  sync_completion ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct ibmvscsi_host_data *hostdata,
				   unsigned char *buffer, int length)
{
	struct viosrp_host_config *host_config;
	struct srp_event_struct *evt_struct;
	unsigned long flags;
	dma_addr_t addr;
	int rc;

	evt_struct = FUNC6(&hostdata->pool);
	if (!evt_struct) {
		FUNC0(hostdata->dev, "couldn't allocate event for HOST_CONFIG!\n");
		return -1;
	}

	FUNC9(evt_struct,
			  sync_completion,
			  VIOSRP_MAD_FORMAT,
			  info_timeout);

	host_config = &evt_struct->iu.mad.host_config;

	/* Set up a lun reset SRP command */
	FUNC10(host_config, 0x00, sizeof(*host_config));
	host_config->common.type = VIOSRP_HOST_CONFIG_TYPE;
	host_config->common.length = length;
	host_config->buffer = addr = FUNC1(hostdata->dev, buffer,
						    length,
						    DMA_BIDIRECTIONAL);

	if (FUNC2(hostdata->dev, host_config->buffer)) {
		if (!FUNC4(FW_FEATURE_CMO))
			FUNC0(hostdata->dev,
			        "dma_mapping error getting host config\n");
		FUNC5(&hostdata->pool, evt_struct);
		return -1;
	}

	FUNC8(&evt_struct->comp);
	FUNC11(hostdata->host->host_lock, flags);
	rc = FUNC7(evt_struct, hostdata, info_timeout * 2);
	FUNC12(hostdata->host->host_lock, flags);
	if (rc == 0)
		FUNC13(&evt_struct->comp);
	FUNC3(hostdata->dev, addr, length, DMA_BIDIRECTIONAL);

	return rc;
}