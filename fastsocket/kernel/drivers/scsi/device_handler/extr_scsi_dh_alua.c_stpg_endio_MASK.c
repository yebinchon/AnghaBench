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
struct scsi_sense_hdr {int /*<<< orphan*/  ascq; int /*<<< orphan*/  asc; int /*<<< orphan*/  sense_key; } ;
struct request {int /*<<< orphan*/  q; struct alua_dh_data* end_io_data; int /*<<< orphan*/  errors; } ;
struct alua_dh_data {scalar_t__ senselen; int /*<<< orphan*/ * callback_data; int /*<<< orphan*/  (* callback_fn ) (int /*<<< orphan*/ *,unsigned int) ;int /*<<< orphan*/  state; int /*<<< orphan*/  group_id; int /*<<< orphan*/  sdev; int /*<<< orphan*/  sense; } ;

/* Variables and functions */
 unsigned int ADD_TO_MLQUEUE ; 
 int /*<<< orphan*/  ALUA_DH_NAME ; 
 scalar_t__ COMMAND_COMPLETE ; 
 scalar_t__ DID_OK ; 
 int /*<<< orphan*/  KERN_INFO ; 
 unsigned int SCSI_DH_IO ; 
 unsigned int SCSI_DH_OK ; 
 unsigned int SCSI_DH_RETRY ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  TPGS_STATE_OPTIMIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct request*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct request *req, int error)
{
	struct alua_dh_data *h = req->end_io_data;
	struct scsi_sense_hdr sense_hdr;
	unsigned err = SCSI_DH_OK;

	if (error || FUNC2(req->errors) != DID_OK ||
			FUNC3(req->errors) != COMMAND_COMPLETE) {
		err = SCSI_DH_IO;
		goto done;
	}

	if (h->senselen > 0) {
		err = FUNC5(h->sense, SCSI_SENSE_BUFFERSIZE,
					   &sense_hdr);
		if (!err) {
			err = SCSI_DH_IO;
			goto done;
		}
		err = FUNC1(h->sdev, &sense_hdr);
		if (err == ADD_TO_MLQUEUE) {
			err = SCSI_DH_RETRY;
			goto done;
		}
		FUNC6(KERN_INFO, h->sdev,
			    "%s: stpg sense code: %02x/%02x/%02x\n",
			    ALUA_DH_NAME, sense_hdr.sense_key,
			    sense_hdr.asc, sense_hdr.ascq);
		err = SCSI_DH_IO;
	}
	if (err == SCSI_DH_OK) {
		h->state = TPGS_STATE_OPTIMIZED;
		FUNC6(KERN_INFO, h->sdev,
			    "%s: port group %02x switched to state %c\n",
			    ALUA_DH_NAME, h->group_id,
			    FUNC4(h->state));
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