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
typedef  size_t u_int ;
struct scsi_target {int dummy; } ;
struct scsi_device {int dummy; } ;
struct info_str {int dummy; } ;
struct ahc_tmode_tstate {int dummy; } ;
struct ahc_softc {int features; TYPE_1__* platform_data; } ;
struct ahc_initiator_tinfo {int /*<<< orphan*/  curr; int /*<<< orphan*/  goal; int /*<<< orphan*/  user; } ;
struct TYPE_2__ {struct scsi_target** starget; } ;

/* Variables and functions */
 int AHC_NUM_LUNS ; 
 int AHC_TWIN ; 
 int /*<<< orphan*/  FUNC0 (struct info_str*,struct scsi_device*) ; 
 struct ahc_initiator_tinfo* FUNC1 (struct ahc_softc*,char,size_t,size_t,struct ahc_tmode_tstate**) ; 
 int /*<<< orphan*/  FUNC2 (struct info_str*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct info_str*,char*,...) ; 
 struct scsi_device* FUNC4 (struct scsi_target*,int) ; 

__attribute__((used)) static void
FUNC5(struct ahc_softc *ahc, struct info_str *info,
		      u_int our_id, char channel, u_int target_id,
		      u_int target_offset)
{
	struct	scsi_target *starget;
	struct	ahc_initiator_tinfo *tinfo;
	struct	ahc_tmode_tstate *tstate;
	int	lun;

	tinfo = FUNC1(ahc, channel, our_id,
				    target_id, &tstate);
	if ((ahc->features & AHC_TWIN) != 0)
		FUNC3(info, "Channel %c ", channel);
	FUNC3(info, "Target %d Negotiation Settings\n", target_id);
	FUNC3(info, "\tUser: ");
	FUNC2(info, &tinfo->user);
	starget = ahc->platform_data->starget[target_offset];
	if (!starget)
		return;

	FUNC3(info, "\tGoal: ");
	FUNC2(info, &tinfo->goal);
	FUNC3(info, "\tCurr: ");
	FUNC2(info, &tinfo->curr);

	for (lun = 0; lun < AHC_NUM_LUNS; lun++) {
		struct scsi_device *sdev;

		sdev = FUNC4(starget, lun);

		if (sdev == NULL)
			continue;

		FUNC0(info, sdev);
	}
}