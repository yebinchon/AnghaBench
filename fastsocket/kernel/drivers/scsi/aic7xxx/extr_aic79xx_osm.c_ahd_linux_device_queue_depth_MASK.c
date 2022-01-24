#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct scsi_device {scalar_t__ tagged_supported; TYPE_2__* sdev_target; int /*<<< orphan*/  lun; TYPE_1__* host; } ;
struct ahd_softc {int /*<<< orphan*/  our_id; } ;
struct ahd_devinfo {int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  channel; } ;
struct TYPE_4__ {scalar_t__ channel; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_TRANSFER_NEG ; 
 int /*<<< orphan*/  AHD_QUEUE_NONE ; 
 int /*<<< orphan*/  AHD_QUEUE_TAGGED ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ahd_softc*,struct ahd_devinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,struct scsi_device*,struct ahd_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,struct ahd_devinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct scsi_device *sdev)
{
	struct	ahd_devinfo devinfo;
	u_int	tags;
	struct ahd_softc *ahd = *((struct ahd_softc **)sdev->host->hostdata);

	FUNC0(&devinfo,
			    ahd->our_id,
			    sdev->sdev_target->id, sdev->lun,
			    sdev->sdev_target->channel == 0 ? 'A' : 'B',
			    ROLE_INITIATOR);
	tags = FUNC1(ahd, &devinfo);
	if (tags != 0 && sdev->tagged_supported != 0) {

		FUNC2(ahd, sdev, &devinfo, AHD_QUEUE_TAGGED);
		FUNC4(ahd, devinfo.channel, devinfo.target,
			       devinfo.lun, AC_TRANSFER_NEG);
		FUNC3(ahd, &devinfo);
		FUNC5("Tagged Queuing enabled.  Depth %d\n", tags);
	} else {
		FUNC2(ahd, sdev, &devinfo, AHD_QUEUE_NONE);
		FUNC4(ahd, devinfo.channel, devinfo.target,
			       devinfo.lun, AC_TRANSFER_NEG);
	}
}