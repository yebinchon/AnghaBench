#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/ * class; struct TYPE_7__* parent; } ;
struct scsi_disk {int previous_state; TYPE_1__ dev; scalar_t__ openers; int /*<<< orphan*/  index; struct gendisk* disk; int /*<<< orphan*/ * driver; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ type; TYPE_1__ sdev_gendev; TYPE_6__* request_queue; } ;
struct gendisk {int /*<<< orphan*/  disk_name; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  rq_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISK_NAME_LEN ; 
 int EAGAIN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_MINORS ; 
 int /*<<< orphan*/  SD_MOD_TIMEOUT ; 
 int /*<<< orphan*/  SD_TIMEOUT ; 
 scalar_t__ TYPE_DISK ; 
 scalar_t__ TYPE_MOD ; 
 scalar_t__ TYPE_RBC ; 
 struct gendisk* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_disk*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_disk*) ; 
 struct scsi_disk* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct gendisk*) ; 
 int /*<<< orphan*/  scsi_sd_probe_domain ; 
 int /*<<< orphan*/  sd_disk_class ; 
 int FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sd_index_ida ; 
 int /*<<< orphan*/  sd_index_lock ; 
 int /*<<< orphan*/  sd_probe_async ; 
 int /*<<< orphan*/  sd_template ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct scsi_device*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 struct scsi_device* FUNC19 (struct device*) ; 

__attribute__((used)) static int FUNC20(struct device *dev)
{
	struct scsi_device *sdp = FUNC19(dev);
	struct scsi_disk *sdkp;
	struct gendisk *gd;
	u32 index;
	int error;

	error = -ENODEV;
	if (sdp->type != TYPE_DISK && sdp->type != TYPE_MOD && sdp->type != TYPE_RBC)
		goto out;

	FUNC0(3, FUNC16(KERN_INFO, sdp,
					"sd_attach\n"));

	error = -ENOMEM;
	sdkp = FUNC13(sizeof(*sdkp), GFP_KERNEL);
	if (!sdkp)
		goto out;

	gd = FUNC1(SD_MINORS);
	if (!gd)
		goto out_free;

	do {
		if (!FUNC10(&sd_index_ida, GFP_KERNEL))
			goto out_put;

		FUNC17(&sd_index_lock);
		error = FUNC9(&sd_index_ida, &index);
		FUNC18(&sd_index_lock);
	} while (error == -EAGAIN);

	if (error)
		goto out_put;

	error = FUNC15("sd", index, gd->disk_name, DISK_NAME_LEN);
	if (error)
		goto out_free_index;

	sdkp->device = sdp;
	sdkp->driver = &sd_template;
	sdkp->disk = gd;
	sdkp->index = index;
	sdkp->openers = 0;
	sdkp->previous_state = 1;

	if (!sdp->request_queue->rq_timeout) {
		if (sdp->type != TYPE_MOD)
			FUNC3(sdp->request_queue, SD_TIMEOUT);
		else
			FUNC3(sdp->request_queue,
					     SD_MOD_TIMEOUT);
	}

	FUNC7(&sdkp->dev);
	sdkp->dev.parent = &sdp->sdev_gendev;
	sdkp->dev.class = &sd_disk_class;
	FUNC5(&sdkp->dev, FUNC4(&sdp->sdev_gendev));

	if (FUNC6(&sdkp->dev))
		goto out_free_index;

	FUNC8(&sdp->sdev_gendev);

	FUNC8(&sdkp->dev);	/* prevent release before async_schedule */
	FUNC2(sd_probe_async, sdkp, &scsi_sd_probe_domain);

	return 0;

 out_free_index:
	FUNC17(&sd_index_lock);
	FUNC11(&sd_index_ida, index);
	FUNC18(&sd_index_lock);
 out_put:
	FUNC14(gd);
 out_free:
	FUNC12(sdkp);
 out:
	return error;
}