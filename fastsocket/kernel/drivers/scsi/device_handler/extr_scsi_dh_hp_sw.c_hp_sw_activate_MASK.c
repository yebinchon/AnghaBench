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
struct scsi_device {int dummy; } ;
struct hp_sw_dh_data {scalar_t__ path_state; int /*<<< orphan*/ * callback_data; int /*<<< orphan*/  (* callback_fn ) (void*,int) ;int /*<<< orphan*/  retries; int /*<<< orphan*/  retry_cnt; } ;
typedef  int /*<<< orphan*/  (* activate_complete ) (void*,int) ;

/* Variables and functions */
 scalar_t__ HP_SW_PATH_PASSIVE ; 
 int SCSI_DH_OK ; 
 struct hp_sw_dh_data* FUNC0 (struct scsi_device*) ; 
 int FUNC1 (struct hp_sw_dh_data*) ; 
 int FUNC2 (struct scsi_device*,struct hp_sw_dh_data*) ; 

__attribute__((used)) static int FUNC3(struct scsi_device *sdev,
				activate_complete fn, void *data)
{
	int ret = SCSI_DH_OK;
	struct hp_sw_dh_data *h = FUNC0(sdev);

	ret = FUNC2(sdev, h);

	if (ret == SCSI_DH_OK && h->path_state == HP_SW_PATH_PASSIVE) {
		h->retry_cnt = h->retries;
		h->callback_fn = fn;
		h->callback_data = data;
		ret = FUNC1(h);
		if (ret == SCSI_DH_OK)
			return 0;
		h->callback_fn = h->callback_data = NULL;
	}

	if (fn)
		fn(data, ret);
	return 0;
}