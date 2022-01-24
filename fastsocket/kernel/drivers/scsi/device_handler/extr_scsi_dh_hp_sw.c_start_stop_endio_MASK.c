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
struct request {scalar_t__ sense_len; int /*<<< orphan*/  q; struct hp_sw_dh_data* end_io_data; int /*<<< orphan*/  errors; } ;
struct hp_sw_dh_data {int /*<<< orphan*/ * callback_data; int /*<<< orphan*/  (* callback_fn ) (int /*<<< orphan*/ *,unsigned int) ;scalar_t__ retry_cnt; int /*<<< orphan*/  sense; int /*<<< orphan*/  sdev; } ;

/* Variables and functions */
 scalar_t__ COMMAND_COMPLETE ; 
 scalar_t__ DID_OK ; 
 int /*<<< orphan*/  HP_SW_NAME ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 unsigned int SCSI_DH_IO ; 
 unsigned int SCSI_DH_OK ; 
 unsigned int SCSI_DH_RETRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct hp_sw_dh_data*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct request *req, int error)
{
	struct hp_sw_dh_data *h = req->end_io_data;
	unsigned err = SCSI_DH_OK;

	if (error || FUNC2(req->errors) != DID_OK ||
			FUNC4(req->errors) != COMMAND_COMPLETE) {
		FUNC5(KERN_WARNING, h->sdev,
			    "%s: sending start_stop_unit failed with %x\n",
			    HP_SW_NAME, req->errors);
		err = SCSI_DH_IO;
		goto done;
	}

	if (req->sense_len > 0) {
		err = FUNC6(h->sdev, h->sense);
		if (err == SCSI_DH_RETRY) {
			err = SCSI_DH_IO;
			if (--h->retry_cnt) {
				FUNC1(req);
				err = FUNC3(h);
				if (err == SCSI_DH_OK)
					return;
			}
		}
	}
done:
	req->end_io_data = NULL;
	FUNC0(req->q, req);
	if (h->callback_fn) {
		h->callback_fn(h->callback_data, err);
		h->callback_fn = h->callback_data = NULL;
	}
	return;

}