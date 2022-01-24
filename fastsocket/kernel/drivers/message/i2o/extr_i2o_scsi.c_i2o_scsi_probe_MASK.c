#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct scsi_device {TYPE_2__ sdev_gendev; } ;
struct i2o_scsi_host {struct Scsi_Host* scsi_host; struct i2o_device** channel; int /*<<< orphan*/  lun; } ;
struct TYPE_6__ {int class_id; int /*<<< orphan*/  tid; int /*<<< orphan*/  parent_tid; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct i2o_device {TYPE_3__ lct_data; TYPE_1__ device; struct i2o_controller* iop; } ;
struct i2o_controller {int /*<<< orphan*/  adaptec; } ;
struct device {int dummy; } ;
struct Scsi_Host {int max_channel; scalar_t__ max_id; scalar_t__ max_lun; } ;

/* Variables and functions */
 int EFAULT ; 
#define  I2O_CLASS_EXECUTIVE 130 
#define  I2O_CLASS_RANDOM_BLOCK_STORAGE 129 
#define  I2O_CLASS_SCSI_PERIPHERAL 128 
 scalar_t__ FUNC0 (struct scsi_device*) ; 
 int FUNC1 (struct scsi_device*) ; 
 struct scsi_device* FUNC2 (struct Scsi_Host*,int,scalar_t__,scalar_t__,struct i2o_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct i2o_device* FUNC4 (struct i2o_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2o_device*,int,int,int*,int) ; 
 struct i2o_scsi_host* FUNC6 (struct i2o_controller*) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_device*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 struct i2o_device* FUNC13 (struct device*) ; 

__attribute__((used)) static int FUNC14(struct device *dev)
{
	struct i2o_device *i2o_dev = FUNC13(dev);
	struct i2o_controller *c = i2o_dev->iop;
	struct i2o_scsi_host *i2o_shost;
	struct Scsi_Host *scsi_host;
	struct i2o_device *parent;
	struct scsi_device *scsi_dev;
	u32 id = -1;
	u64 lun = -1;
	int channel = -1;
	int i, rc;

	i2o_shost = FUNC6(c);
	if (!i2o_shost)
		return -EFAULT;

	scsi_host = i2o_shost->scsi_host;

	switch (i2o_dev->lct_data.class_id) {
	case I2O_CLASS_RANDOM_BLOCK_STORAGE:
	case I2O_CLASS_EXECUTIVE:
#ifdef CONFIG_I2O_EXT_ADAPTEC
		if (c->adaptec) {
			u8 type;
			struct i2o_device *d = i2o_shost->channel[0];

			if (!i2o_parm_field_get(d, 0x0000, 0, &type, 1)
			    && (type == 0x01))	/* SCSI bus */
				if (!i2o_parm_field_get(d, 0x0200, 4, &id, 4)) {
					channel = 0;
					if (i2o_dev->lct_data.class_id ==
					    I2O_CLASS_RANDOM_BLOCK_STORAGE)
						lun =
						    cpu_to_le64(i2o_shost->
								lun++);
					else
						lun = 0;
				}
		}
#endif
		break;

	case I2O_CLASS_SCSI_PERIPHERAL:
		if (FUNC5(i2o_dev, 0x0000, 3, &id, 4))
			return -EFAULT;

		if (FUNC5(i2o_dev, 0x0000, 4, &lun, 8))
			return -EFAULT;

		parent = FUNC4(c, i2o_dev->lct_data.parent_tid);
		if (!parent) {
			FUNC10("can not find parent of device %03x\n",
				 i2o_dev->lct_data.tid);
			return -EFAULT;
		}

		for (i = 0; i <= i2o_shost->scsi_host->max_channel; i++)
			if (i2o_shost->channel[i] == parent)
				channel = i;
		break;

	default:
		return -EFAULT;
	}

	if (channel == -1) {
		FUNC10("can not find channel of device %03x\n",
			 i2o_dev->lct_data.tid);
		return -EFAULT;
	}

	if (FUNC7(id) >= scsi_host->max_id) {
		FUNC10("SCSI device id (%d) >= max_id of I2O host (%d)",
			 FUNC7(id), scsi_host->max_id);
		return -EFAULT;
	}

	if (FUNC8(lun) >= scsi_host->max_lun) {
		FUNC10("SCSI device lun (%lu) >= max_lun of I2O host (%d)",
			 (long unsigned int)FUNC8(lun),
			 scsi_host->max_lun);
		return -EFAULT;
	}

	scsi_dev =
	    FUNC2(i2o_shost->scsi_host, channel, FUNC7(id),
			      FUNC8(lun), i2o_dev);

	if (FUNC0(scsi_dev)) {
		FUNC10("can not add SCSI device %03x\n",
			 i2o_dev->lct_data.tid);
		return FUNC1(scsi_dev);
	}

	rc = FUNC12(&i2o_dev->device.kobj,
			       &scsi_dev->sdev_gendev.kobj, "scsi");
	if (rc)
		goto err;

	FUNC9("device added (TID: %03x) channel: %d, id: %d, lun: %ld\n",
		 i2o_dev->lct_data.tid, channel, FUNC7(id),
		 (long unsigned int)FUNC8(lun));

	return 0;

err:
	FUNC11(scsi_dev);
	return rc;
}