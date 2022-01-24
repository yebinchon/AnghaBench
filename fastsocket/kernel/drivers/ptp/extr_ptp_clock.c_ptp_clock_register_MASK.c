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
struct ptp_clock_info {scalar_t__ n_alarm; int /*<<< orphan*/  owner; scalar_t__ pps; } ;
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/  ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct ptp_clock {int index; int /*<<< orphan*/  tsevq_mux; int /*<<< orphan*/  devid; scalar_t__ pps_source; TYPE_2__ clock; int /*<<< orphan*/  dev; int /*<<< orphan*/  tsev_wq; TYPE_1__ tsevq; struct ptp_clock_info* info; } ;
struct pps_source_info {int /*<<< orphan*/  owner; int /*<<< orphan*/  mode; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  pps ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ptp_clock* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MINORMASK ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  PPS_MAX_NAME_LEN ; 
 scalar_t__ PTP_MAX_ALARMS ; 
 int /*<<< orphan*/  PTP_PPS_DEFAULTS ; 
 int /*<<< orphan*/  PTP_PPS_MODE ; 
 int /*<<< orphan*/  delete_ptp_clock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ptp_clock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,struct ptp_clock*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ptp_clock*) ; 
 struct ptp_clock* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pps_source_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct pps_source_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  ptp_class ; 
 int /*<<< orphan*/  FUNC18 (struct ptp_clock*) ; 
 int /*<<< orphan*/  ptp_clock_ops ; 
 int /*<<< orphan*/  ptp_clocks_map ; 
 int /*<<< orphan*/  ptp_devt ; 
 int FUNC19 (struct ptp_clock*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

struct ptp_clock *FUNC22(struct ptp_clock_info *info,
				     struct device *parent)
{
	struct ptp_clock *ptp;
	int err = 0, index, major = FUNC2(ptp_devt);

	if (info->n_alarm > PTP_MAX_ALARMS)
		return FUNC0(-EINVAL);

	/* Initialize a clock structure. */
	err = -ENOMEM;
	ptp = FUNC10(sizeof(struct ptp_clock), GFP_KERNEL);
	if (ptp == NULL)
		goto no_memory;

	index = FUNC7(&ptp_clocks_map, 0, MINORMASK + 1, GFP_KERNEL);
	if (index < 0) {
		err = index;
		goto no_slot;
	}

	ptp->clock.ops = ptp_clock_ops;
	ptp->clock.release = delete_ptp_clock;
	ptp->info = info;
	ptp->devid = FUNC3(major, index);
	ptp->index = index;
	FUNC21(&ptp->tsevq.lock);
	FUNC13(&ptp->tsevq_mux);
	FUNC8(&ptp->tsev_wq);

	/* Create a new device in our class. */
	ptp->dev = FUNC5(ptp_class, parent, ptp->devid, ptp,
				 "ptp%d", ptp->index);
	if (FUNC1(ptp->dev))
		goto no_device;

	FUNC4(ptp->dev, ptp);

	err = FUNC19(ptp);
	if (err)
		goto no_sysfs;

	/* Register a new PPS source. */
	if (info->pps) {
		struct pps_source_info pps;
		FUNC11(&pps, 0, sizeof(pps));
		FUNC20(pps.name, PPS_MAX_NAME_LEN, "ptp%d", index);
		pps.mode = PTP_PPS_MODE;
		pps.owner = info->owner;
		ptp->pps_source = FUNC15(&pps, PTP_PPS_DEFAULTS);
		if (!ptp->pps_source) {
			FUNC17("failed to register pps source\n");
			goto no_pps;
		}
	}

	/* Create a posix clock. */
	err = FUNC14(&ptp->clock, ptp->devid);
	if (err) {
		FUNC17("failed to create posix clock\n");
		goto no_clock;
	}

	return ptp;

no_clock:
	if (ptp->pps_source)
		FUNC16(ptp->pps_source);
no_pps:
	FUNC18(ptp);
no_sysfs:
	FUNC6(ptp_class, ptp->devid);
no_device:
	FUNC12(&ptp->tsevq_mux);
no_slot:
	FUNC9(ptp);
no_memory:
	return FUNC0(err);
}